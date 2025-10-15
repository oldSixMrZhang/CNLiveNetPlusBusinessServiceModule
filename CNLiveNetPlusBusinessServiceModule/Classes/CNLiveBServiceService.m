//
//  CNLiveBServiceService.m
//  Pods-CNLiveNetPlusBusinessServiceModule_Example
//
//  Created by 张旭 on 2020/4/2.
//

#import "CNLiveBServiceService.h"
#import <CNLiveBServices/CNLiveBServices.h>
#import "CNLiveBServiceController.h"

@interface CNLiveBServiceService ()<CNLiveBServiceServiceProtocol>


@end

@BeeHiveService(CNLiveBServiceServiceProtocol, CNLiveBServiceService)
@implementation CNLiveBServiceService

- (UIViewController *)getServiceViewController
{
    CNLiveBServiceController *vc = [[CNLiveBServiceController alloc] init];
    return vc;
}
@end
