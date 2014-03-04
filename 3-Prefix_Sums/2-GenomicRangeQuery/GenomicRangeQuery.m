NSMutableArray * solution(NSString *S, NSMutableArray *P, NSMutableArray *Q) {
    NSMutableArray *result = [[NSMutableArray alloc] init];
	NSDictionary *dna = @{@"A": @1, @"C": @2, @"G":@3, @"T": @4};
	int prefSumA[S.length+1], prefSumC[S.length+1], prefSumG[S.length+1], a, c, g;
	prefSumA[0]=prefSumC[0]=prefSumG[0] = 0;
	for(int i = 0; i < S.length; i++){
		a=c=g=0;
		NSString *str = [NSString stringWithFormat: @"%C", [S characterAtIndex:i]];
		int curChar = [[dna objectForKey:str] intValue];
		switch (curChar) {
			case 1:
				a=1;
				break;
			case 2:
				c=1;
				break;
			case 3:
				g=1;
				break;
		}
		prefSumA[i+1] = prefSumA[i]+a;
		prefSumC[i+1] = prefSumC[i]+c;
		prefSumG[i+1] = prefSumG[i]+g;
	}
	for(int i = 0; i < P.count; i++){
		int minNucleotide = 4;
		int min = [[P objectAtIndex:i] intValue];
		int max = [[Q objectAtIndex:i] intValue]+1;
		if(prefSumA[max] - prefSumA[min] > 0)
			minNucleotide = 1;
		else if(prefSumC[max] - prefSumC[min] > 0)
			minNucleotide = 2;
		else if(prefSumG[max] - prefSumG[min] > 0)
			minNucleotide = 3;
		[result addObject:@(minNucleotide)];
	}
    return result;
}