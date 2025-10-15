//
//  CNLiveBServiceModule.m
//  Pods-CNLiveNetPlusBusinessServiceModule_Example
//
//  Created by 张旭 on 2020/4/2.
//

#import "CNLiveBServiceModule.h"

@BeeHiveMod(CNLiveBServiceModule)
@implementation CNLiveBServiceModule

- (void)modSetUp:(BHContext *)context
{
    NSLog(@"CNLiveBServiceModule:modsetup");
}

- (void)modInit:(BHContext *)context
{
    NSLog(@"CNLiveBServiceModule:modInit");
}

@end
