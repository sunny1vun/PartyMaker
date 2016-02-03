//
//  ViewController.m
//  PartyMaker
//
//  Created by 2 on 2/3/16.
//  Copyright © 2016 TonyStar. All rights reserved.
//

#import "SUNViewController.h"
#import "SUNCastomVC.h"

@interface SUNViewController ()

@end

@implementation SUNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    
    SUNCastomVC *root =[SUNCastomVC new];
    root.view = [[UIView alloc] initWithFrame:self.view.frame];
    
    [root.view setBackgroundColor: [UIColor blueColor]];
    
    UIBarButtonItem *rightRoot = [[UIBarButtonItem alloc] initWithTitle: @"+"                                                                  style:UIBarButtonItemStylePlain target:root action:@selector(someAction)];
    
    root.navigationItem.rightBarButtonItem = rightRoot;
    
    root.title= @"Party Maker";
    
    UINavigationController *myNavigator= [[UINavigationController alloc] initWithRootViewController:root];
    
    [self presentViewController:myNavigator animated:NO completion:nil];
    

}

@end
