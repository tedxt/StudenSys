//
//  Student.h
//  StudentManagementSystem
//
//  Created by Ted on 11/9/14.
//  Copyright (c) 2014 Ted. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

+(Student *)studentWithName:(NSString *)name;

-(Student *)initWithNum:(int)num
                AndName:(NSString *)name;

-(void)dump;

@property int num;
@property (copy) NSString *name;

@end
