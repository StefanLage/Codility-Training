NSMutableArray solution(int N, NSMutableArray *A) {
	NSMutableArray *counters = [[NSMutableArray alloc] initWithCapacity:N];
	NSMutableArray *maxCounters = [[NSMutableArray alloc] init];
	int max, currentMax, indexMax;
	max = currentMax = indexMax = 0;
	for(int i=0; i<N; i++)
		[counters addObject:@0];
	for(NSNumber *X in A){
		if(X.intValue == N+1)
			max = currentMax;
		else{
			int current = X.intValue-1;
			NSNumber *c = [counters objectAtIndex:X.intValue-1];
			if(c.intValue < max)
				c = @(max+1);
			else
				c = @(c.intValue+1);
			[counters replaceObjectAtIndex:X.intValue-1 withObject:c];
			if(c.intValue > currentMax)
				currentMax = c.intValue;
		}
	}
	for(int i=0; i<N; i++){
		NSNumber *c = [counters objectAtIndex:i];
		if(c.intValue < max){
			c = @(max);
			[counters replaceObjectAtIndex:i withObject:c];
		}
	}
	return counters;
}