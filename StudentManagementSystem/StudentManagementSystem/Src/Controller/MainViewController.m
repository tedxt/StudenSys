//
//  MainViewController.m
//  StudentManagementSystem
//
//  Created by Ted on 11/9/14.
//  Copyright (c) 2014 Ted. All rights reserved.
//

#import "MainViewController.h"
#import "Student.h"
#import "DataManager.h"
#import "NewViewController.h"
#import "EditViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    Student *st1 = [Student studentWithName:@"Ted"];
//    [st1 dump];
    Student *st2 = [Student studentWithName:@"Tim"];
//    [st2 dump];
    
    DataManager *dataManager = [DataManager sharedInstance];
    long count = [dataManager queryStudentCount];
    if (count == 0) {
        [dataManager addStudent:st1];
        [dataManager addStudent:st2];

    }
    
    
//    NSLog(@"%ld", dataManager.queryStudentCount);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
    {
        return [[DataManager sharedInstance]queryStudentCount];
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
        Student *student = [[[DataManager sharedInstance] getStudentArray] objectAtIndex:indexPath.row];
        NSString *string =[NSString stringWithFormat:@"%d: %@",student.num, student.name];
        cell.textLabel.text = string;
        
        return cell;
    }

-(IBAction)newStudent:(id)sender
{
    NewViewController *newViewController = [[NewViewController alloc]initWithNibName:@"NewViewController" bundle:nil];
    [self.navigationController pushViewController:newViewController animated:YES];
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

-(void)viewWillAppear:(BOOL)animated
{
    [self.tableVIew reloadData];
}

/*-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@", indexPath);
    Student *student = [[[DataManager sharedInstance]getStudentArray] objectAtIndex:indexPath.row];
    
    EditViewController *editViewController = [[EditViewController alloc]initWithNibName:@"EditViewController"
                                                                                 bundle:nil];
    
    editViewController.currentStudentNum = student.num;
    [self.navigationController pushViewController:editViewController animated:YES];
}
*/
-(void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@", indexPath);
    Student *student = [[[DataManager sharedInstance]getStudentArray] objectAtIndex:indexPath.row];
    
    EditViewController *editViewController = [[EditViewController alloc]initWithNibName:@"EditViewController"
                                                                                 bundle:nil];
    
    editViewController.currentStudentNum = student.num;
    [self.navigationController pushViewController:editViewController animated:YES];
    
    
}


@end
