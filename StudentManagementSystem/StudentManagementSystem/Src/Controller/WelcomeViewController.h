//
//  WelcomeViewController.h
//  StudentManagementSystem
//
//  Created by Ted on 2/18/15.
//  Copyright (c) 2015 Ted. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WelcomeViewController : UIViewController<UIScrollViewDelegate>

@property  UIView *page1;
@property  UIView *page2;
@property  UIView *page3;

@property IBOutlet UIPageControl *pageControl;
@property IBOutlet UIScrollView *scorllView;

//-(IBAction)changePage:(id)sender;
-(void)start;

@end
