//
//  DataManager.m
//  StudentManagementSystem
//
//  Created by Ted on 11/9/14.
//  Copyright (c) 2014 Ted. All rights reserved.
//

#import "DataManager.h"
#import "Student.h"

@implementation DataManager

+(DataManager *)sharedInstance
{
    static DataManager *s_Instance = nil;
    if (s_Instance != nil)
    {
        return s_Instance;
    }
    
    @synchronized(self)
    {
        if (s_Instance != nil)
        {
            return s_Instance;
        }
        
        s_Instance = [[DataManager alloc]init];
        return s_Instance;
    }
}

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        _studentArray = [NSMutableArray array];
    }
    
    return self;
}

-(void)addStudent:(Student *)student
{
    [_studentArray addObject:student];
}

-(void)replaceStudent:(Student *)student atnum:(int)num
{
    for (long i=_studentArray.count-1; i>=0; i--)
    {
        Student *student = [_studentArray objectAtIndex:i];
        if (student.num == num)
        {
            [_studentArray replaceObjectAtIndex:num withObject:student];
            return;
        }
        
    }

   
}

-(long)showindexof:(Student *)student
{
    return  [_studentArray indexOfObject:student];
}


-(void)deleteStudent:(int)num
{
    for (long i=_studentArray.count-1; i>=0; i--)
    {
        Student *student = [_studentArray objectAtIndex:i];
        if (student.num == num)
        {
            [_studentArray removeObjectAtIndex:i];
            return;
        }
        
    }
}

-(Student *)queryStudent:(int)num
{
    for (int i=0; i<_studentArray.count; i++)
    {
        Student *student = [_studentArray objectAtIndex:i];
        if (student.num == num)
        {
            return student;
        }
    }
    
    return nil;
}

-(long)queryStudentCount
{
    return _studentArray.count;
}


-(NSArray *)getStudentArray
{
    return _studentArray;
}

@end
