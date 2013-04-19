//
//  main.c
//  yostring
//
//  Created by Karen Cate Arabit on 4/19/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#include <stdio.h> //for printf
#include <stdlib.h> //for malloc/free
#include <string.h> //for strlen

int main(int argc, const char * argv[])
{

    char x = 0x21; //The character '!'
    
    while (x <= 0x7e) { //The character '~'
        printf("%x is %c" ,x ,x);
        x++;
    }
    
//    //Get a pointer to 5 bytes of memory on the heap
//    char *start = malloc(5);
//    
//    //Put 'L' in the first byte
//    *start = 'L';
//    
//    //Put 'o' in the second byte
//    *(start + 1) = 'o';
//    
//    //Put 'v' in the third byte
//    *(start + 2) = 'v';
//    
//    //Put 'e' in the fourth byte
//    *(start + 3) = 'e';
//    
//    //Put zero in the fifth byte
//    *(start + 4) = '\0';
    
    char *start = "Love";
    
    //Print out the string and its length
    printf("%s has %zu characters\n", start ,strlen(start));
    
    //Print out the third letter
    printf("The third letter is %c\n", *(start+2));
    
    //Free the memory so that it can be reused
    //free(start);
    start = NULL;
    
    return 0;
}

