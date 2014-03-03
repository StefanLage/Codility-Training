int solution(int A[], int N){
	int result = N+1;
	int sum, i;
	sum = i = 0;
	for(i=1; i<=N; i++){
		result += i;
		sum += A[i-1];
	}
	return result - sum;
}