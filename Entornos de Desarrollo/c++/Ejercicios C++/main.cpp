#include <iostream>
using std::cout;
using std::cin;
using std::endl
using namespace std;

int main()
{
    int lineas;
    int asteriscos = 1;

    cout << "Lineas: ";
    cin >>lineas;

    cout << endl;

    for(int i = lineas; i >= 1; i--)
    {
        for(int j = 0; j < i; j++)
            cout << " ";

        for(int k = 1; k <= asteriscos; k++)
            cout << "*";

        cout << endl;

        asteriscos += 2;
    }

    return 0;
}
