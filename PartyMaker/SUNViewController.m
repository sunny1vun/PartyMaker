//
//  ViewController.m
//  PartyMaker
//
//  Created by 2 on 2/3/16.
//  Copyright © 2016 TonyStar. All rights reserved.
//

#import "SUNViewController.h"
#import "SUNMakingPartyVC.h"

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
    
    SUNMakingPartyVC *root =[SUNMakingPartyVC new];
    root.view = [[UIView alloc] initWithFrame:self.view.frame];

    [root.view setBackgroundColor: [[UIColor alloc] initWithRed:46/255.f green:49/255.f blue:56/255.f alpha:1.f]];
    
    UIBarButtonItem *rightRoot = [[UIBarButtonItem alloc] initWithTitle: @"+" style:UIBarButtonItemStylePlain target:root action:@selector(makeParty)];
    
    root.navigationItem.rightBarButtonItem = rightRoot;
    
    root.title= @"Party Maker";
    
    UINavigationController *myNavigator= [[UINavigationController alloc] initWithRootViewController:root];
    
    [self presentViewController:myNavigator animated:NO completion:nil];
    

}

@end
