#include <iostream>
#include <cmath>

class Point
{
private:
    int x, y;
public:                         // ���ٰ����ϰ� �ۺ� �־������
    Point(int a, int b) :x(a), y(b)  //Ŭ���� �̸��� �����ϰ� ����Ʈ�� ���� (//x=a; y=b;)
    {
    }
    double dist(Point p) {
        int dx = p.x - x;
        int dy = p.y - y;
        double d = sqrt(dx * dx + dy * dy);
        return d;
    }
    Point operator+(Point p) // return(p1 + p2)
    {
        int nx = x + p.x;
        int ny = y + p.y;
        Point np(nx, ny);
        return np;
    }
    Point Add(Point p)
    {
        int nx = x + p.x;
        int ny = y + p.y;
        Point np(nx, ny);
        return np;
    }
    void info()
    {   //(x,y)
        std::cout<< "(" << x << "," << y <<")";
    }
};

int main()
{
    Point p1(10, 10), p2(30, 30);
    std::cout << "p1"; p1.info();
    std::cout << "�� p2"; p2.info();
    std::cout << "�� �Ÿ��� " << p1.dist(p2) << "�Դϴ�\n";
    std::cout << "P1 + P2�� P";
    (p1 + p2).info();
}