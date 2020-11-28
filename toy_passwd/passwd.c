// https://www.thegeekstuff.com/2013/06/buffer-overflow/

/*
(base) devansh Project $ gcc passwd.c
(base) devansh Project $ ./a.out

 Enter the password : 
hhhhhhhhhhhhhhhhhh

 Wrong Password 
*** stack smashing detected ***: <unknown> terminated
Aborted (core dumped)
(base) devansh Project $ gcc -fno-stack-protector passwd.c
(base) devansh Project $ ./a.out

 Enter the password : 
hhhhhhhhhhhhhhhhh

 Wrong Password 

 Root privileges given to the user 
*/

#include <stdio.h>
#include <string.h>

int main(void)
{
    char buff[15];
    int pass = 0;

    printf("\n Enter the password : \n");
    fgets(buff, 20, stdin);

    if(strcmp(buff, "thegeekstuff\n"))
    {
        printf ("\n Wrong Password \n");
    }
    else
    {
        printf ("\n Correct Password \n");
        pass = 1;
    }

    if(pass)
    {
       /* Now Give root or admin rights to user*/
        printf ("\n Root privileges given to the user \n");
    }

    return 0;
}