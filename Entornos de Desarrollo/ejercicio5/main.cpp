#include <iostream>

using namespace std;

int main()
{
    for (int i=5; i>0; i--){
        for(int k=0; k<i; k++){
            cout<<"+";
        }
        for(int r=5; r>i; r--){
            cout<<"*";
        }
    cout<<"\n";
    }
}
