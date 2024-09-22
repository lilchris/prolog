#include <iostream>
#include <stack>
#include <string>
using namespace std;

string str;

int main(){
    cout << "escribre 'end' para finalizar el programa\n\n";
    while (cin >> str && str.compare("end")){
        stack<char> pila;
        for(int i=0; i<str.length(); i++){
            if(str[i] == '('){
                pila.push(str[i]);
            }
            else{
                if(pila.empty()){pila.push(str[i]); break;}
                pila.pop();
            }
        }
        if(pila.empty()) cout<< "correcto\n";
        else             cout<< "incorrecto\n";
        str = "";
    }

    return 0;
}
