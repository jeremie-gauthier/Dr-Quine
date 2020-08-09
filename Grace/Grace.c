#include<stdio.h>
#include<unistd.h>

/*
  Simple comment
*/

#define S "#include<stdio.h>%c#include<unistd.h>%c%c/*%c  Simple comment%c*/%c%c#define S %c%s%c%c#define PRINT(f) fprintf(f,S,10,10,10,10,10,10,10,34,S,34,10,10,34,34,34,34,10,10)%c#define FT int main(){FILE *f=fopen(%cGrace_kid.c%c,%cw%c);PRINT(f);}%c%cFT"
#define PRINT(f) fprintf(f,S,10,10,10,10,10,10,10,34,S,34,10,10,34,34,34,34,10,10)
#define FT int main(){FILE *f=fopen("Grace_kid.c","w");PRINT(f);}

FT