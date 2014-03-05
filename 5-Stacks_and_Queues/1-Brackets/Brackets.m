#import <Foundation/NSDictionary.h>
int solution(NSString *S) {
	NSMutableArray *opens = [[NSMutableArray alloc] initWithArray:@[@"{", @"(", @"["]];
	NSDictionary *links = @{@"}":@"{", @")":@"(", @"]":@"["};
	NSMutableArray *stack = [[NSMutableArray alloc] init];
    
    for(int i=0; i < S.length; i++){
		NSString *cc = [NSString stringWithFormat:@"%C", [S characterAtIndex:i]];
		if([opens containsObject:cc]){
			[stack addObject:cc];
		}
		else{
			if(stack.count == 0)
				return 0;
			else if(![[stack lastObject] isEqualToString:[links objectForKey:cc]])
				return 0;
			else
				[stack removeLastObject];
		}
    }
    return (stack.count == 0)? 1 : 0;
}