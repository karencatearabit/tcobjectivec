//
//  main.c
//  Degrees
//
//  Created by Karen Cate Arabit on 4/12/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#include <stdio.h>

//Declare a global variable
//float lastTemperature;

//Declate static variable
//static float lastTemperature;

//Intilize lastTemperature to 50 degrees
static float lastTemperature = 50.0;

float farenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Farenheit\n",cel,fahr);
    return fahr;

}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = farenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Farenheit\n",freezeInF);
    printf("The last temperature converted was %f\n", lastTemperature);
    
    return 0;
}

