int solution(int A[], int N) {
    int cars, sumWestCars, i;
    cars = sumWestCars = 0;
    for(i = N-1; i >= 0; i--){
        if(cars > 1000000000)
            return -1;
        if(A[i] == 0)
            cars += sumWestCars;
        else
            sumWestCars += 1;
    }
    return cars;
}