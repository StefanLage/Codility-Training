int solution(int A[], int N) {
    double minAverage = (A[0] + A[1])/2;
	int index, i;
	index = 0;
	for(i=0; i < N-2; i++){
		if((A[i] + A[i+1])/2.0 < minAverage){
			minAverage = (A[i] + A[i+1])/2.0;
			index = i;
		}
		if((A[i] + A[i+1] + A[i+2])/3.0 < minAverage){
			minAverage = (A[i] + A[i+1] + A[i+2])/3.0;
			index = i;
		}		
	}
	if((A[N-1] + A[N-2])/2.0 < minAverage){
		minAverage = (A[N-1] + A[N-2])/2.0;
		index = N-2;
	}
    return index;
}
