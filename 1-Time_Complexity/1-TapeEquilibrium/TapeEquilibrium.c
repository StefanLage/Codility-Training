int solution(int A[], int N){
	int min, i, sum, lsum;
	sum = lsum = 0;
	for(i=0; i<N; i++)
		sum += A[i];
	for(i=0; i<N; i++){
		if(i>0){
			int rsum = sum-lsum;
			if(abs(lsum-rsum) < min)
				min = abs(lsum-rsum);
		}
		lsum += A[i];
	}
	return min;
}