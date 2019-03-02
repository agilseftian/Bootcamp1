#include <iostream>

using namespace std;

int main()
{
int a, b, c, d, e, f, g,h,i;

cout<<"MASUKKAN NOMINAL UANG ANDA : ";
cin>>a;

cout<<"Pecahan Uang Kembali : "<<endl;
b=a/20000;
cout<<b<<" Lembar Rp 20.000"<<endl;
c=a%20000;
d=c/10000;
cout<<d<<" Lembar Rp 10.000"<<endl;
e=c%10000;
f=e/2000;
cout<<f<<" Lembar Rp 2.000"<<endl;
g=e%2000;
h=g/500;
cout<<h<<" Koin Rp 500"<<endl;
i=g%500;
}
