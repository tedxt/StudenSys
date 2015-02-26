//
//  EditViewController.m
//  StudentManagementSystem
//
//  Created by Ted on 11/9/14.
//  Copyright (c) 2014 Ted. All rights reserved.
//

#import "EditViewController.h"
#import "Student.h"
#import "DataManager.h"

@interface EditViewController ()

@end

@implementation EditViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    Student *student = [[DataManager sharedInstance]queryStudent:self.currentStudentNum];
    NSUInteger index = [[DataManager sharedInstance]showindexof:student];
    NSLog(@"currentStudentNum:%d", self.currentStudentNum);
    NSLog(@"index:%lu", index);
  //  UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 40, 120, 44)];
    
  //  [self.view addSubview:myLabel];
    
    
    self.stuNum.text =[NSString stringWithFormat:@"学号:%d",student.num];
    self.nameField.text =[NSString stringWithFormat:@"%@",student.name];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)editStu:(id)sender
{
 
 Student *student = [[DataManager sharedInstance]queryStudent:self.currentStudentNum];
    student.name = self.nameField.text;
    
 [self.navigationController popViewControllerAnimated:YES];
}

-(IBAction)deleteStu:(id)sender
{
    [[DataManager sharedInstance]deleteStudent:self.currentStudentNum];
    [self.navigationController popViewControllerAnimated:YES];

    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
