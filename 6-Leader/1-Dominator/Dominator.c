int solution(int A[], int N) {
    int i, index, stack, count, lastVal, candidate;
    index = candidate = -1;
    stack = lastVal = 0;
    for(i=0; i < N; i++){
        if(stack == 0){
            stack++;
            lastVal = A[i];
        }
        else
            if(A[i] != lastVal)
                stack--;
            else
                stack++;
    }
    if(stack > 0)
        candidate = lastVal;
    for(i=0; i < N; i++){
        if(candidate !=-1 && A[i] == candidate){
            index = i;
            count++;
        }
    }
    if(count > div(N,2).quot+1)
        return index;
    else
        return -1;
}
