int solution(int X, NSMutableArray *A) {
    // write your code in Objective-C 2.0
    int steps = X;
	NSMutableArray *count = [[NSMutableArray alloc] init];
	for(int i = 0; i < steps+1; i++)
		[count addObject:[NSNumber numberWithBool:NO]];
	
	int i = 0;
    for (NSNumber *N in A){
		if(![[count objectAtIndex:N.intValue] boolValue]){
			[count replaceObjectAtIndex:N.intValue withObject:[NSNumber numberWithBool:YES]];
			steps--;
		}
		if(steps==0)
			return i;
		i++;
    }
    return -1;
}