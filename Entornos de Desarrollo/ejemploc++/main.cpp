#include <iostream>
#include <cmath>
using namespace std;

int main()

{
    int c1, c2;

  double area;

  cout<< "Introduce el cateto1: ";
  cin>>c1;

    cout <<"Introduce el cateto2: ";
    cin>>c2;


  area=sqrt(c1*c1+c2*c2);

  cout << "El area es: "<< area;

  return 0;

}
