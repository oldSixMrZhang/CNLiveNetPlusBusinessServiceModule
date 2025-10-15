//
//  CNLiveBServiceController.m
//  Pods-CNLiveNetPlusBusinessServiceModule_Example
//
//  Created by 张旭 on 2020/4/2.
//  服务中心页

#import "CNLiveBServiceController.h"

@interface CNLiveBServiceController ()

@end

@implementation CNLiveBServiceController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
    self.tabBarController.tabBar.hidden = NO;
    self.navigationHidden = YES;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
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
