#include<stdio.h>

int main()
{
    int a,b,n,i,c,d;
    scanf("%lld",&n);

    for(i=0; i<n; i++)
    {
        scanf("%d%d",&a,&b);
        if(a>=b && (a+b)%2==0)
        {
            c=(a+b)/2;
            d=(a-b)/2;
            printf("%d %d\n",c,d);
        }
        else
        {
            printf("impossible\n");
        }
    }
    return 0;
}
