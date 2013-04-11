//
//  main.c
//  ClassCertificates
//
//  Created by Karen Cate Arabit on 4/11/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void congratulateStudent(char* student, char* course, int numDays)
{
    printf("%s has done as much %s Programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[])
{
    congratulateStudent("Mark","Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo","Objective-C", 2);
    sleep(2);
    congratulateStudent("Mike","Python", 5);
    sleep(2);
    congratulateStudent("Ted","iOS", 5);
    congratulateStudent("KC","iOS", 5);
    sleep(2);
    
    return 0;
}

