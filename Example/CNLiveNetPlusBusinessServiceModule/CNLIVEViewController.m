//
//  CNLIVEViewController.m
//  CNLiveNetPlusBusinessServiceModule
//
//  Created by oldSixMrZhang on 04/02/2020.
//  Copyright (c) 2020 oldSixMrZhang. All rights reserved.
//

#import "CNLIVEViewController.h"

@interface CNLIVEViewController ()

@end

@implementation CNLIVEViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
