//
//  DataManager.h
//  StudentManagementSystem
//
//  Created by Ted on 11/9/14.
//  Copyright (c) 2014 Ted. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Student;

@interface DataManager : NSObject

{
    NSMutableArray *_studentArray;
}

+(DataManager *)sharedInstance;

-(id)init;

-(void)addStudent:(Student *)student;
-(void)replaceStudent:(Student *)student atindex:(long)index;
-(void)deleteStudent:(int)num;
-(Student *)queryStudent:(int)num;
-(long)queryStudentCount;
-(NSArray *)getStudentArray;
-(long)showindexof:(Student *)student;




@end
