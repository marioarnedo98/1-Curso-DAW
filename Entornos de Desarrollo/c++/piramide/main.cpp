#include <iostream>

using namespace std;

int main()
{
    int i;
    int asteriscos = 1;
		int j;

    cout << endl;

    for(int i = 7; i >= 1; i--)
    {
        for(int j = 0; j < i; j++)
            cout << " ";

        for(int k = 1; k <= asteriscos; k++)
            cout << "*";

        cout << endl;

        asteriscos += 2;
    }
cout << "      ***";
cout << endl;
cout << "      ***";
cout << endl;
}
