//
//  EditViewController.h
//  StudentManagementSystem
//
//  Created by Ted on 11/9/14.
//  Copyright (c) 2014 Ted. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController

@property int currentStudentNum;

@property IBOutlet UILabel *stuNum;
@property IBOutlet UITextField *nameField;

-(IBAction)editStu:(id)sender;
-(IBAction)deleteStu:(id)sender;

@end
