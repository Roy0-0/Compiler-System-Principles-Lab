; Hand-written LLVM IR equivalent of advanced_complete.sy.
; A SysY float[2][3] array is represented as [2 x [3 x float]].

@samples = global [4 x float] [
  float 1.250000e+00, float -2.000000e+00,
  float 3.500000e+00, float 4.000000e+00
], align 16

@matrix_a = global [2 x [3 x float]] [
  [3 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00],
  [3 x float] [float 4.000000e+00, float 5.000000e+00, float 6.000000e+00]
], align 16

@matrix_b = global [2 x [3 x float]] [
  [3 x float] [float 5.000000e-01, float -1.000000e+00, float 2.000000e+00],
  [3 x float] [float 1.500000e+00, float 2.500000e-01, float -5.000000e-01]
], align 16

declare float @getfloat()
declare void @putfloat(float)
declare void @putch(i32)

define float @abs_float(float %value) {
entry:
  %is_negative = fcmp olt float %value, 0.000000e+00
  br i1 %is_negative, label %negative, label %nonnegative

negative:
  %negated = fneg float %value
  ret float %negated

nonnegative:
  ret float %value
}

define float @language_rules_demo(i32 %count, float %value) {
entry:
  %promoted = sitofp i32 %count to float
  %truncated = fptosi float %value to i32
  %truncated_float = sitofp i32 %truncated to float
  %logical_bool = fcmp oeq float %value, 0.000000e+00
  %logical = uitofp i1 %logical_bool to float
  %sum1 = fadd float %promoted, %truncated_float
  %sum2 = fadd float %sum1, %logical
  %sum3 = fadd float %sum2, 5.000000e-01
  ret float %sum3
}

define i32 @minimum_int_demo() {
entry:
  ret i32 -2147483648
}

define float @scaled_array_sum(float* %data, i32 %len, float %initial) {
entry:
  br label %loop

loop:
  %index = phi i32 [0, %entry], [%next_index, %body]
  %total = phi float [%initial, %entry], [%next_total, %body]
  %has_item = icmp slt i32 %index, %len
  br i1 %has_item, label %body, label %exit

body:
  %item_ptr = getelementptr inbounds float, float* %data, i32 %index
  %item = load float, float* %item_ptr, align 4
  %scaled = fmul float %item, 1.500000e+00
  %next_total = fadd float %total, %scaled
  %next_index = add i32 %index, 1
  br label %loop

exit:
  ret float %total
}

define float @matrix_dot([3 x float]* %left, [3 x float]* %right) {
entry:
  %left_flat = bitcast [3 x float]* %left to float*
  %right_flat = bitcast [3 x float]* %right to float*
  br label %loop

loop:
  %index = phi i32 [0, %entry], [%next_index, %body]
  %total = phi float [0.000000e+00, %entry], [%next_total, %body]
  %has_item = icmp slt i32 %index, 6
  br i1 %has_item, label %body, label %exit

body:
  %left_ptr = getelementptr inbounds float, float* %left_flat, i32 %index
  %right_ptr = getelementptr inbounds float, float* %right_flat, i32 %index
  %left_value = load float, float* %left_ptr, align 4
  %right_value = load float, float* %right_ptr, align 4
  %product = fmul float %left_value, %right_value
  %next_total = fadd float %total, %product
  %next_index = add i32 %index, 1
  br label %loop

exit:
  ret float %total
}

define i32 @main() {
entry:
  %input = call float @getfloat()
  %discarded_rules = call float @language_rules_demo(i32 2, float %input)
  %discarded_minimum = call i32 @minimum_int_demo()
  %magnitude = call float @abs_float(float %input)

  %samples_ptr = getelementptr inbounds [4 x float], [4 x float]* @samples, i32 0, i32 0
  %array_result = call float @scaled_array_sum(float* %samples_ptr, i32 4, float %input)

  %matrix_a_ptr = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* @matrix_a, i32 0, i32 0
  %matrix_b_ptr = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* @matrix_b, i32 0, i32 0
  %dot_result = call float @matrix_dot([3 x float]* %matrix_a_ptr, [3 x float]* %matrix_b_ptr)

  %partial = fadd float %magnitude, %array_result
  %combined = fadd float %partial, %dot_result

  call void @putfloat(float %magnitude)
  call void @putch(i32 32)
  call void @putfloat(float %array_result)
  call void @putch(i32 32)
  call void @putfloat(float %dot_result)
  call void @putch(i32 32)
  call void @putfloat(float %combined)
  call void @putch(i32 10)
  ret i32 0
}
