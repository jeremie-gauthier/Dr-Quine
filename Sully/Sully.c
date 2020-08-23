#define _GNU_SOURCE
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(){
int i=5;
char *bin;
asprintf(&bin,"Sully_%i",i);
char *source;
asprintf(&source,"%s.c",bin);
char *body="#define _GNU_SOURCE%1$c#include<stdio.h>%1$c#include<stdlib.h>%1$c#include<string.h>%1$c%1$cint main(){%1$cint i=%2$i;%1$cchar *bin;%1$casprintf(&bin,%3$cSully_%%i%3$c,i);%1$cchar *source;%1$casprintf(&source,%3$c%%s.c%3$c,bin);%1$cchar *body=%3$c%4$s%3$c;%1$cFILE *f=fopen(source,%3$cw%3$c);%1$cfprintf(f,body,10,i-1,34,body);%1$cfclose(f);%1$cchar *compile;%1$casprintf(&compile,%3$cclang -Wall -Wextra -Werror -o %%s %%s%3$c,bin,source);%1$csystem(compile);%1$cchar *exec;%1$casprintf(&exec,%3$c./%%s%3$c,bin);%1$cif(i>1)%1$c  system(exec);%1$c}";
FILE *f=fopen(source,"w");
fprintf(f,body,10,i-1,34,body);
fclose(f);
char *compile;
asprintf(&compile,"clang -Wall -Wextra -Werror -o %s %s",bin,source);
system(compile);
char *exec;
asprintf(&exec,"./%s",bin);
if(i>1)
  system(exec);
}