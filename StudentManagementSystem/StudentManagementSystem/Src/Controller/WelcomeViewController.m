//
//  WelcomeViewController.m
//  StudentManagementSystem
//
//  Created by Ted on 2/18/15.
//  Copyright (c) 2015 Ted. All rights reserved.
//

#import "WelcomeViewController.h"
#import "MainViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;

    self.scorllView.contentSize = CGSizeMake(width*3, height);
//    self.scorllView.frame = self.view.frame;
    self.scorllView.delegate = self;
 //   self.page1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
 //   [self.scorllView addSubview:self.page1];

    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(0.5*width, 0.5*height, 280, 80)];
    label1.text = @"增加";
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(1.5*width, 0.5*height, 280, 80)];
    label2.text = @"修改";
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 200, 80);
    [button setCenter:CGPointMake(2.5*width, 0.5*height)];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
                        
    [button setTitle:@"Start!" forState:UIControlStateNormal];
    
    [self.scorllView addSubview:label1];
    [self.scorllView addSubview:label2];
    [self.scorllView addSubview:button];

    self.pageControl.numberOfPages = self.scorllView.contentSize.width/self.view.frame.size.width;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat width = self.view.frame.size.width;
    CGPoint offset = scrollView.contentOffset;
    NSInteger pageNumber = roundf(offset.x/width);
    self.pageControl.currentPage = pageNumber;
    
}

-(void)start
{
    NSLog(@"11");
    MainViewController *mainViewController = [[MainViewController alloc]initWithNibName:@"MainViewController" bundle:nil];
    [self.navigationController pushViewController:mainViewController animated:YES];
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
