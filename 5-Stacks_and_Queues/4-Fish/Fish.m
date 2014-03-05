int solution(NSMutableArray *A, NSMutableArray *B) {
    NSMutableArray *stackDown = [[NSMutableArray alloc] init];
	int count_down = 0;
	int count_fish = 0;
	for(int i = 0; i < A.count; i++){
		if([[B objectAtIndex:i] intValue] == 1){
			[stackDown addObject:[A objectAtIndex:i]];
			count_down++;
		}
		else{
			while(count_down > 0){
				int curA =[[A objectAtIndex:i] intValue];
				int lastI =[[stackDown lastObject] intValue];
				if(curA > lastI){
					[stackDown removeLastObject];
					count_down--;
				}
				else
					break;
			}
			if(count_down == 0)
				count_fish++;
		}
	}
	return stackDown.count + count_fish;
}