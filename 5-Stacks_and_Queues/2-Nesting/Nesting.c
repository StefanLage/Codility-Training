#include <string.h>
int solution(char *S) {
    char bracket = '(';
    int opened, i;
    opened = i  = 0;
    for(i=0; i < strlen(S); i++){
		char c = S[i];
		if(c == bracket)
			opened++;
		else{
		    if(opened == 0)
		        return 0;
            else
		        opened--;
        }
    }
    return (opened == 0)? 1 : 0;
}
