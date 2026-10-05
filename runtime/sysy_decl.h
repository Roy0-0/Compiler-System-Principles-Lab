#ifndef COMPILER_LAB_SYSY_DECL_H
#define COMPILER_LAB_SYSY_DECL_H

int getint(void);
int getch(void);
float getfloat(void);
int getarray(int values[]);
int getfarray(float values[]);

void putint(int value);
void putch(int value);
void putfloat(float value);
void putarray(int count, int values[]);
void putfarray(int count, float values[]);

#endif
