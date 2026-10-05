; Hand-written LLVM IR equivalent of comprehensive.sy.
; Compatible with the typed-pointer syntax used by LLVM 14.

@global_bias = global i32 3, align 4
@weights = global [6 x i32] [
  i32 1, i32 2, i32 3, i32 4, i32 5, i32 6
], align 16
@table = global [2 x [3 x i32]] [
  [3 x i32] [i32 1, i32 2, i32 3],
  [3 x i32] [i32 4, i32 5, i32 6]
], align 16

declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)

define i32 @abs_val(i32 %x) {
entry:
  %is_negative = icmp slt i32 %x, 0
  br i1 %is_negative, label %negative, label %nonnegative

negative:
  %negated = sub i32 0, %x
  ret i32 %negated

nonnegative:
  ret i32 %x
}

define i32 @classify(i32 %x) {
entry:
  %is_negative = icmp slt i32 %x, 0
  br i1 %is_negative, label %check_hundred, label %check_limit

check_limit:
  %within_limit = icmp sle i32 %x, 6
  br i1 %within_limit, label %accepted, label %check_hundred

check_hundred:
  %is_hundred = icmp eq i32 %x, 100
  br i1 %is_hundred, label %accepted, label %rejected

accepted:
  ret i32 1

rejected:
  ret i32 0
}

define i32 @arithmetic_demo(i32 %a, i32 %b) {
entry:
  %is_zero = icmp eq i32 %b, 0
  %safe_b = select i1 %is_zero, i32 1, i32 %b
  %add_value = add i32 %a, %safe_b
  %sub_value = sub i32 %a, %safe_b
  %mul_value = mul i32 %a, %safe_b
  %div_value = sdiv i32 %a, %safe_b
  %rem_value = srem i32 %a, %safe_b
  %unary_minus = sub i32 0, %safe_b
  %sum1 = add i32 %add_value, %sub_value
  %sum2 = add i32 %sum1, %mul_value
  %sum3 = add i32 %sum2, %div_value
  %sum4 = add i32 %sum3, %rem_value
  %sum5 = add i32 %sum4, %a
  %sum6 = add i32 %sum5, %unary_minus
  ret i32 %sum6
}

define i32 @sum_selected(i32 %n) {
entry:
  br label %condition

condition:
  %i = phi i32 [0, %entry], [%next_i, %continue_block]
  %total = phi i32 [0, %entry], [%continue_total, %continue_block]
  %inside_loop = icmp slt i32 %i, %n
  br i1 %inside_loop, label %body, label %normal_exit

body:
  %next_i = add i32 %i, 1
  %parity = srem i32 %next_i, 2
  %is_even = icmp eq i32 %parity, 0
  br i1 %is_even, label %continue_block, label %odd_value

odd_value:
  %updated_total = add i32 %total, %next_i
  %over_limit = icmp sgt i32 %updated_total, 7
  br i1 %over_limit, label %break_exit, label %odd_continue

odd_continue:
  br label %continue_block

continue_block:
  %continue_total = phi i32 [%total, %body], [%updated_total, %odd_continue]
  br label %condition

normal_exit:
  br label %exit

break_exit:
  br label %exit

exit:
  %result = phi i32 [%total, %normal_exit], [%updated_total, %break_exit]
  ret i32 %result
}

define i32 @array_sum(i32* %data, i32 %len) {
entry:
  br label %loop

loop:
  %index = phi i32 [0, %entry], [%next_index, %body]
  %total = phi i32 [0, %entry], [%next_total, %body]
  %has_item = icmp slt i32 %index, %len
  br i1 %has_item, label %body, label %exit

body:
  %item_ptr = getelementptr inbounds i32, i32* %data, i32 %index
  %item = load i32, i32* %item_ptr, align 4
  %next_total = add i32 %total, %item
  %next_index = add i32 %index, 1
  br label %loop

exit:
  ret i32 %total
}

define i32 @matrix_sum([3 x i32]* %data, i32 %rows) {
entry:
  %flat_data = bitcast [3 x i32]* %data to i32*
  %item_count = mul i32 %rows, 3
  br label %loop

loop:
  %index = phi i32 [0, %entry], [%next_index, %body]
  %total = phi i32 [0, %entry], [%next_total, %body]
  %has_item = icmp slt i32 %index, %item_count
  br i1 %has_item, label %body, label %exit

body:
  %item_ptr = getelementptr inbounds i32, i32* %flat_data, i32 %index
  %item = load i32, i32* %item_ptr, align 4
  %next_total = add i32 %total, %item
  %next_index = add i32 %index, 1
  br label %loop

exit:
  ret i32 %total
}

define i32 @emit(i32 %value, i32 %last) {
entry:
  call void @putint(i32 %value)
  %is_last = icmp ne i32 %last, 0
  br i1 %is_last, label %newline, label %space

newline:
  call void @putch(i32 10)
  br label %exit

space:
  call void @putch(i32 32)
  br label %exit

exit:
  ret i32 0
}

define i32 @main() {
entry:
  %raw = call i32 @getint()
  %too_small = icmp slt i32 %raw, 1
  %lower_bounded = select i1 %too_small, i32 5, i32 %raw
  %too_large = icmp sgt i32 %lower_bounded, 6
  %n = select i1 %too_large, i32 6, i32 %lower_bounded

  %bias_before = load i32, i32* @global_bias, align 4
  %arithmetic = call i32 @arithmetic_demo(i32 %n, i32 %bias_before)
  %selected = call i32 @sum_selected(i32 %n)

  %weights_ptr = getelementptr inbounds [6 x i32], [6 x i32]* @weights, i32 0, i32 0
  %weight_sum = call i32 @array_sum(i32* %weights_ptr, i32 %n)

  %table_ptr = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* @table, i32 0, i32 0
  %table_sum = call i32 @matrix_sum([3 x i32]* %table_ptr, i32 2)

  %category = call i32 @classify(i32 %raw)
  %magnitude = call i32 @abs_val(i32 %raw)
  %discarded_call = call i32 @classify(i32 %n)

  %bias_after = add i32 %bias_before, 1
  store i32 %bias_after, i32* @global_bias, align 4

  %result1 = add i32 %arithmetic, %selected
  %result2 = add i32 %result1, %weight_sum
  %result3 = add i32 %result2, %table_sum
  %result4 = add i32 %result3, %category
  %result5 = add i32 %result4, %magnitude
  %result_with_nested_scope = add i32 %result5, 2

  %emit0 = call i32 @emit(i32 %arithmetic, i32 0)
  %emit1 = call i32 @emit(i32 %selected, i32 0)
  %emit2 = call i32 @emit(i32 %weight_sum, i32 0)
  %emit3 = call i32 @emit(i32 %table_sum, i32 0)
  %emit4 = call i32 @emit(i32 %category, i32 0)
  %emit5 = call i32 @emit(i32 %magnitude, i32 0)
  %emit6 = call i32 @emit(i32 %bias_after, i32 0)
  %emit7 = call i32 @emit(i32 %result_with_nested_scope, i32 1)
  ret i32 0
}
