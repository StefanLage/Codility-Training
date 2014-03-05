int solution(NSMutableArray *H) {
    NSMutableArray *stack = [[NSMutableArray alloc] init];
    int count = 0;
    for(int i=0; i < H.count; i++){
        while(stack.count > 0 && [[H objectAtIndex:i] intValue] < [[stack lastObject] intValue]){
            [stack removeLastObject];
            count++;
        }
        if(stack.count == 0 || [[H objectAtIndex:i] intValue] > [[stack lastObject] intValue])
            [stack addObject:[H objectAtIndex:i]];
    }
    count += stack.count;
    return count;
}