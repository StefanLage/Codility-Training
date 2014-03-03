int solution(NSMutableArray *A) {
    // write your code in Objective-C 2.0
    int result = 1;
    NSArray *sorted = [A sortedArrayUsingSelector:@selector(compare:)];
    for(int i = 1; i <= A.count; i++){
        NSNumber *N = [sorted objectAtIndex:(i-1)];
        if(i != N.intValue){
            result = 0;
            break;
        }
    }
    return result;
}