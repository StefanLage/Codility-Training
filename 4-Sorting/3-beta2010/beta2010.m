int solution(NSMutableArray *A) {
    NSMutableArray *lower = [[NSMutableArray alloc] init];
    NSMutableArray *upper = [[NSMutableArray alloc] init];
    int count = 0;
    for (int i=0; i < A.count; i++){
		int low = i-[[A objectAtIndex:i] intValue];
        [lower addObject:[NSNumber numberWithInt:low]];
        [upper addObject:@(i+[[A objectAtIndex:i] intValue])];
    }
    lower = (NSMutableArray*)[lower sortedArrayUsingSelector:@selector(compare:)];
    upper = (NSMutableArray*)[upper sortedArrayUsingSelector:@selector(compare:)];
	int j = 0;
    for (int i=0; i < A.count; i++){
		while (j < A.count && [[upper objectAtIndex:i] intValue] >= [[lower objectAtIndex:j] intValue])
			j++;
		count += j - i - 1;
		if(count > 1000000000)
			return -1;
    }
    return count;
}