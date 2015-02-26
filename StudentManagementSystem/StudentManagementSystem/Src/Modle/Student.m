//
//  Student.m
//  StudentManagementSystem
//
//  Created by Ted on 11/9/14.
//  Copyright (c) 2014 Ted. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize num = _num;
@synthesize name = _name;

+(Student *)studentWithName:(NSString *)name
{
    static int lastNum = 0;
    lastNum++;
    
    Student *student = [[Student alloc]initWithNum:lastNum AndName:name];
    return student;
}

-(Student *)initWithNum:(int)num
                AndName:(NSString *)name
{
    self = [super init];
    if (self != NULL)
    {
        _num = num;
        self.name = name;
    }
    
    return self;
    
}

-(void)dump
{
    NSLog(@"===Student Beging===");
    NSLog(@"num: %d", self.num);
    NSLog(@"num: %@", self.name);
    NSLog(@"===Student End=======");

}


@end
