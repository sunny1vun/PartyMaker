//
//  SUNCastomVC.m
//  PartyMaker
//
//  Created by 2 on 2/3/16.
//  Copyright © 2016 TonyStar. All rights reserved.
//

#import "SUNCastomVC.h"
#

@implementation SUNCastomVC


-(void)someColor{
    
//    [self.view setBackgroundColor: [UIColor random]];
    
}

-(void)someDrop{
    
//    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

-(void)someAction{
    
    SUNCastomVC *some =[SUNCastomVC new];
    some.view = [[UIView alloc] initWithFrame:self.view.frame];
//    UIView *dateView= [[UIView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];
    
    [self.navigationController pushViewController:some animated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    if (([self.navigationController.viewControllers count]> 1)== YES) {
        [self.view setBackgroundColor: [UIColor greenColor]];
//        self.title= [NSString stringWithFormat:@"Some %i", (int)[self.navigationController.viewControllers count]];
        self.title= @"Create Party";
    }
    
    
}


@end
