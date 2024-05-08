#include <iostream>
#include <cstring>  // strlen() 함수를 사용하기 위해

using namespace std;

int main()
{
    char char1[20];
    char char2[20] = "jauar";
    string str1;
    string str2 = "panda";
    // char1 = char2; << 불가능
    str1 = str2;    // 가능
    cout << str1 << endl;

    return 0;
}