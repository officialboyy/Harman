#include <iostream> // 구조체

using namespace std;

int main()
{
    struct MyStruct
    {
        string name;
        string position;
        float height;
        float weight;
    };

    MyStruct A;
    A.name = "Son";
    A.position = "Striker";
    A.height = 183;
    A.weight = 77;

    MyStruct B = {
        "Messi",
        "Striker",
        170,
        70
    };

    MyStruct C[2] = {
        {"A", "A", 1, 1},
        {"B", "B", 2, 2}
    };

    cout << C[0].height << C[1].position << endl;

    cout << A.name << "  " << A.position << "  " << A.height << "  " << A.weight << endl;
    cout << B.name << "  " << B.position << "  " << B.height << "  " << B.weight << endl;
    
    return 0;
}

/*
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
*/

/*
#include <iostream>
#include <cstring>  // strlen() 함수를 사용하기 위해

using namespace std;

int main()
{
    const int Size = 15;
    char name1[Size];   // 비어있는 배열
    char name2[Size] = "C++programming";

    cout << "안녕하세요! 저는 " << name2;
    cout << "입니다! 성함이 어떻게 되시나요?\n";
    cin.get(name1, Size);
    cout << "음, " << name1 << "씨, 당신의 이름은 ";
    cout << strlen(name1) << " 자입니다만\n";
    cout << sizeof(name1) << " 바이트 크기의 배열에 저장되었습니다.\n";
    cout << "이름이" << name1[0] << "자로 시작하는군요.\n";
    name2[3] = '\0';    // set to null character
    cout << "제 이름의 처음 세 문자는 다음과 같습니다: ";
    cout << name2 << endl;

    return 0;
}
*/

/*
#include <iostream>
#include <climits>

using namespace std;

int main()
{
    char a[] = "Hello";

    cout << a << endl;
    return 0;
}
*/