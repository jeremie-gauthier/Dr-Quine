#include<stdio.h>
/*
  This is the first comment
*/
void fn(){
char*b="#include<stdio.h>%c/*%c  This is the first comment%c*/%cvoid fn(){%cchar*b=%c%s%c;%cprintf(b,10,10,10,10,10,34,b,34,10,10);%c}";
printf(b,10,10,10,10,10,34,b,34,10,10);
}
int main(){
/*
  This is the second comment
*/
fn();
char*a="%cint main(){%c/*%c  This is the second comment%c*/%cfn();%cchar*a=%c%s%c;%cprintf(a,10,10,10,10,10,10,34,a,34,10,10);%c}";
printf(a,10,10,10,10,10,10,34,a,34,10,10);
}