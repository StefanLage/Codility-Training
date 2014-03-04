int solution(NSMutableArray *A) {
    NSArray *sorted = [A sortedArrayUsingSelector:@selector(compare:)];
    for(int i = 0; i < A.count; i++){
        if(i+2 < A.count){
            int P = [[sorted objectAtIndex:i] intValue];
            int Q = [[sorted objectAtIndex:i+1] intValue];
            int R = [[sorted objectAtIndex:i+2] intValue];
            if((P+Q > R) && (Q+R > P) && (R+P > Q))
                return 1;
        }
    }
    return 0;
}