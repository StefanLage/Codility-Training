int solution(NSMutableArray *A) {
    NSArray *sorted = [A sortedArrayUsingSelector:@selector(compare:)];
    int fP =[ [sorted objectAtIndex:0] intValue];
    int fQ =[ [sorted objectAtIndex:1] intValue];
    int lP =[ [sorted objectAtIndex:A.count-3] intValue];
    int lQ =[ [sorted objectAtIndex:A.count-2] intValue];
    int lR =[ [sorted objectAtIndex:A.count-1] intValue];
    return ((fP*fQ*lR) > (lP*lQ*lR)) ? (fP*fQ*lR) : (lP*lQ*lR);
}