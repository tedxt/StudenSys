//
//  MainViewController.h
//  StudentManagementSystem
//
//  Created by Ted on 11/9/14.
//  Copyright (c) 2014 Ted. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property IBOutlet UITableView *tableVIew;

-(IBAction)newStudent:(id)sender;





@end
