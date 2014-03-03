#include <math.h>
int solution(int X, int Y, int D) {
    // ceil function returns the smallest integer no less than (Y-X)/D
    return (int)ceil((double)(Y-X)/D);
}