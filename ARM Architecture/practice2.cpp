#include <iostream> // ����ü

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
#include <cstring>  // strlen() �Լ��� ����ϱ� ����

using namespace std;

int main()
{
    char char1[20];
    char char2[20] = "jauar";
    string str1;
    string str2 = "panda";
    // char1 = char2; << �Ұ���
    str1 = str2;    // ����
    cout << str1 << endl;

    return 0;
}
*/

/*
#include <iostream>
#include <cstring>  // strlen() �Լ��� ����ϱ� ����

using namespace std;

int main()
{
    const int Size = 15;
    char name1[Size];   // ����ִ� �迭
    char name2[Size] = "C++programming";

    cout << "�ȳ��ϼ���! ���� " << name2;
    cout << "�Դϴ�! ������ ��� �ǽó���?\n";
    cin.get(name1, Size);
    cout << "��, " << name1 << "��, ����� �̸��� ";
    cout << strlen(name1) << " ���Դϴٸ�\n";
    cout << sizeof(name1) << " ����Ʈ ũ���� �迭�� ����Ǿ����ϴ�.\n";
    cout << "�̸���" << name1[0] << "�ڷ� �����ϴ±���.\n";
    name2[3] = '\0';    // set to null character
    cout << "�� �̸��� ó�� �� ���ڴ� ������ �����ϴ�: ";
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