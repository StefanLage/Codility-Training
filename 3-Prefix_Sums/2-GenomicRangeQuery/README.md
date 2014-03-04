GenomicRangeQuery
=================


A non-empty zero-indexed string S is given. String S consists of N characters from the set of upper-case English letters A, C, G, T.

This string actually represents a DNA sequence, and the upper-case letters represent single nucleotides.

You are also given non-empty zero-indexed arrays P and Q consisting of M integers. These arrays represent queries about minimal nucleotides. We represent the letters of string S as integers 1, 2, 3, 4 in arrays P and Q, where A = 1, C = 2, G = 3, T = 4, and we assume that A < C < G < T.

Query K requires you to find the minimal nucleotide from the range (P[K], Q[K]), 0 ≤ P[i] ≤ Q[i] < N.

For example, consider string S = GACACCATA and arrays P, Q such that:

    P[0] = 0    Q[0] = 8
    P[1] = 0    Q[1] = 2
    P[2] = 4    Q[2] = 5
    P[3] = 7    Q[3] = 7

The minimal nucleotides from these ranges are as follows:

        (0, 8) is A identified by 1,
        (0, 2) is A identified by 1,
        (4, 5) is C identified by 2,
        (7, 7) is T identified by 4.

Write a function:

    NSMutableArray * solution(NSString *S, NSMutableArray *P, NSMutableArray *Q); 

that, given a non-empty zero-indexed string S consisting of N characters and two non-empty zero-indexed arrays P and Q consisting of M integers, returns an array consisting of M characters specifying the consecutive answers to all queries.

The sequence should be returned as:

        a Results structure (in C), or
        a vector of integers (in C++), or
        a Results record (in Pascal), or
        an array of integers (in any other programming language).

For example, given the string S = GACACCATA and arrays P, Q such that:

    P[0] = 0    Q[0] = 8
    P[1] = 0    Q[1] = 2
    P[2] = 4    Q[2] = 5
    P[3] = 7    Q[3] = 7

the function should return the values [1, 1, 2, 4], as explained above.

Assume that:

        N is an integer within the range [1..100,000];
        M is an integer within the range [1..50,000];
        each element of array P, Q is an integer within the range [0..N − 1];
        P[i] ≤ Q[i];
        string S consists only of upper-case English letters A, C, G, T.

Complexity:

        expected worst-case time complexity is O(N+M);
        expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

