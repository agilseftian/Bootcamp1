#include<stdio.h>
 
int main()
{
    int i, j, Side;
     
    printf("masukkan\n");
    scanf("%d", &Side);
     
    for(i = 0; i < Side; i++)
    {
        for(j = 0; j < Side; j++)
	{
           printf("*");
           printf("=");
        }
        printf("\n");
    }
    return 0;
}
