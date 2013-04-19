//
//  main.c
//  [C] Triangle
//
//  Created by Karen Cate Arabit on 4/19/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float a, float b)
{
    return 180.0 - (a + b);
}

int main(int argc, const char * argv[])
{

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    
    return 0;
}

