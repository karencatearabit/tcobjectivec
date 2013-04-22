//
//  main.c
//  [C] Counting Backward
//
//  Created by Karen Cate Arabit on 4/22/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int divisible = 3;
    int number = 99;
    
    do {
        printf("%d\n", number);
        
        if(number%5 == 0)
            printf("Found one!\n");
        
        number -= divisible;
    } while (number >= 0);
    return 0;
}

