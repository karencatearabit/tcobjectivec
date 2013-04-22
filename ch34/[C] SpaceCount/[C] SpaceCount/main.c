//
//  main.c
//  [C] SpaceCount
//
//  Created by Karen Cate Arabit on 4/22/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#include <stdio.h>
#include <string.h> //for strlen

int spaceCount(char *w) {
    int count = 0;
    
    for(int i = 0 ; i < strlen(w) ; i++)
    {
        if (w[i] == 0x20) {
            count++;
        }
    }
    
    return count;
}

int main(int argc, const char * argv[])
{

    char *word = "KC Arabit is AWESOME";

    printf("\"%s\"\n" ,word);
    printf("has %d number of spaces",spaceCount(word));
    
    return 0;
}

