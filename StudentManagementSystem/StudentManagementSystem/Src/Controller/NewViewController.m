//
//  NewViewController.m
//  StudentManagementSystem
//
//  Created by Ted on 11/9/14.
//  Copyright (c) 2014 Ted. All rights reserved.
//

#import "NewViewController.h"
#import "DataManager.h"
#import "Student.h"

@interface NewViewController ()

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)create:(id)sender
{
    NSLog(@"ss");
    NSString *name = self.nameField.text;
    if (name == nil || name.length == 0)
    {
        [self.nameField becomeFirstResponder];
        return;
    }
    
    Student *student = [Student studentWithName:self.nameField.text];
    [[DataManager sharedInstance]addStudent:student];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
