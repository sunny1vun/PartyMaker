//
//  SUNCastomVC.m
//  PartyMaker
//
//  Created by 2 on 2/3/16.
//  Copyright © 2016 TonyStar. All rights reserved.
//

#import "SUNMakingPartyVC.h"

@interface SUNMakingPartyVC()
@property (nonatomic) UIPageControl *pageControl;
@property (nonatomic) UIScrollView *scrollView;

@end

@implementation SUNMakingPartyVC

-(void)changeColor{
    
//    [self.view setBackgroundColor: [UIColor random]];
    
}

-(void)dropToPop{
    
//    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

#pragma mark- Making PartyMakerView

-(void)addDateButton{
    UIButton *chooseDate= [UIButton buttonWithType:UIButtonTypeCustom];
    chooseDate.frame= (CGRect){121, 74, 190, 37};
    chooseDate.layer.cornerRadius= 3.f;
    chooseDate.backgroundColor= [[UIColor alloc] initWithRed:239/255.f green:177/255.f blue:27/255.f alpha:1.f];
    [chooseDate setTitle:@"Normal"forState:UIControlStateNormal];
    [chooseDate setTitle:@"Highlighted"forState:UIControlStateHighlighted];
    [chooseDate setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [chooseDate addTarget:self action:@selector(onButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chooseDate];
}

-(void)addTextField{
    UITextField *textField = [[UITextField alloc] initWithFrame:(CGRect){121, 121, 190, 37}];
    textField.layer.cornerRadius= 3.f;
    textField.placeholder = @"Your Party Name";
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Some Text" attributes:@{ NSForegroundColorAttributeName : [[UIColor alloc] initWithRed:76/255.f green:82/255.f blue:92/255.f alpha:1.f] }];
    textField.attributedPlaceholder = str;
    textField.textColor = [UIColor whiteColor];
    textField.font = [UIFont fontWithName:@"Helvetica" size:14];
    textField.backgroundColor = [[UIColor alloc] initWithRed:35/255.f green:37/255.f blue:43/255.f alpha:1.f];
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.rightViewMode = UITextFieldViewModeAlways;
    //    textField.rightView = [[UIImageViewalloc] initWithImage:[UIImageimageNamed:@"Img1"]];
    textField.leftViewMode = UITextFieldViewModeAlways;
    //    textField.leftView = [[UIImageView alloc] ...];
    textField.returnKeyType = UIReturnKeyDone;
    //    textField.delegate = partyMakerVC;
    [textField addTarget:self action:@selector(onTextFieldEditingEnded) forControlEvents:UIControlEventEditingDidEnd];
    [self.view addSubview:textField];
}

-(void)addTopSlider{
    UISlider *slider = [[UISlider alloc] initWithFrame:(CGRect){174, 174, 137, 30}];
    slider.minimumValueImage = [UIImage imageNamed:@"Sun-32"];
    slider.maximumValueImage = [[UIImage imageNamed:@"Sun-64"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    slider.minimumTrackTintColor = [[UIColor alloc] initWithRed:240/255.f green:180/255.f blue:30/255.f alpha:1.f];
    slider.maximumTrackTintColor = [[UIColor alloc] initWithRed:28/255.f green:30/255.f blue:35/255.f alpha:1.f];
    slider.thumbTintColor = [UIColor whiteColor];
    slider.tintColor = [UIColor blackColor];
    slider.value = 0.3;
    [slider addTarget:self action:@selector(onSlide:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
}

-(void)addBotSlider{
//UISlider *sliderBot = [[UISlider alloc] initWithFrame:(CGRect){121, 229, 137, 30}];
//sliderBot.minimumValueImage = [UIImage imageNamed:@"Sun-32"];
//sliderBot.maximumValueImage = [[UIImage imageNamed:@"Sun-64"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
//sliderBot.minimumTrackTintColor = [[UIColor alloc] initWithRed:240/255.f green:180/255.f blue:30/255.f alpha:1.f];
//sliderBot.maximumTrackTintColor = [[UIColor alloc] initWithRed:28/255.f green:30/255.f blue:35/255.f alpha:1.f];
//sliderBot.thumbTintColor = [UIColor whiteColor];
//sliderBot.tintColor = [UIColor blackColor];
//sliderBot.value = 0.3;
//[sliderBot addTarget:partyMakerVC action:@selector(onSlide:) forControlEvents:UIControlEventValueChanged];
//[partyMakerVC.view addSubview:sliderBot];
}
-(void)addScrollViewWithPageControl{
//UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:(CGRect){121, 289, 190, 101}];
//scrollView.pagingEnabled = YES;
//scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, 55, 0);
//UIImageView *imageView = [[UIImageView alloc] init];
//[scrollView.viewForFirstBaselineLayout setBackgroundColor:[UIColor grayColor]];
//[scrollView addSubview:imageView];
//scrollView.contentSize = imageView.frame.size;
//UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:(CGRect){0, 1284, 750, 50}];
//pageControl.numberOfPages = 5;
//pageControl.currentPage = 0;
//pageControl.backgroundColor = [UIColor blackColor];
//[pageControl addTarget:partyMakerVC action:@selector(onPageChanged:) forControlEvents:UIControlEventValueChanged];
//
////    pageControl.numberOfPages = scrollView.contentSize.width/[UIScreenmainScreen].bounds.size.width;[partyMakerVC.view addSubview:pageControl];
////    partyMakerVC.pageControl = pageControl;
////    UIView *viewForSliderImages= [[UIView alloc] initWithFrame:(CGRect){121, 229, 190, 101}];
////    viewForSliderImages.scrollView = scrollView;
////    [viewForSliderImages addSubview:pageControl];
//[partyMakerVC.view addSubview:scrollView];
//[partyMakerVC.view addSubview:pageControl];
//
//partyMakerVC.pageControl = pageControl;
//partyMakerVC.scrollView = scrollView;
}

#pragma mark- Working with PartyMakerView
-(void)makeParty{
    
    SUNMakingPartyVC *partyMakerVC =[SUNMakingPartyVC new];
    partyMakerVC.view = [[UIView alloc] initWithFrame:self.view.frame];
//    UIView *dateView= [[UIView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];
    [partyMakerVC.navigationItem setHidesBackButton:YES];
    
    //от сюда
    UIButton *chooseDate= [UIButton buttonWithType:UIButtonTypeCustom];
    chooseDate.frame= (CGRect){121, 74, 190, 37};
    chooseDate.layer.cornerRadius= 3.f;
    chooseDate.backgroundColor= [[UIColor alloc] initWithRed:239/255.f green:177/255.f blue:27/255.f alpha:1.f];
    [chooseDate setTitle:@"Normal"forState:UIControlStateNormal];
    [chooseDate setTitle:@"Highlighted"forState:UIControlStateHighlighted];
    [chooseDate setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [chooseDate addTarget:partyMakerVC action:@selector(onButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [partyMakerVC.view addSubview:chooseDate];
    
    
    UITextField *textField = [[UITextField alloc] initWithFrame:(CGRect){121, 121, 190, 37}];
    textField.layer.cornerRadius= 3.f;
    textField.placeholder = @"Your Party Name";
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Some Text" attributes:@{ NSForegroundColorAttributeName : [[UIColor alloc] initWithRed:76/255.f green:82/255.f blue:92/255.f alpha:1.f] }];
    textField.attributedPlaceholder = str;
    textField.textColor = [UIColor whiteColor];
    textField.font = [UIFont fontWithName:@"Helvetica" size:14];
    textField.backgroundColor = [[UIColor alloc] initWithRed:35/255.f green:37/255.f blue:43/255.f alpha:1.f];
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.rightViewMode = UITextFieldViewModeAlways;
//    textField.rightView = [[UIImageViewalloc] initWithImage:[UIImageimageNamed:@"Img1"]];
    textField.leftViewMode = UITextFieldViewModeAlways;
//    textField.leftView = [[UIImageView alloc] ...];
    textField.returnKeyType = UIReturnKeyDone;
//    textField.delegate = partyMakerVC;
    [textField addTarget:partyMakerVC action:@selector(onTextFieldEditingEnded) forControlEvents:UIControlEventEditingDidEnd];
    [partyMakerVC.view addSubview:textField];
    
    
    UISlider *slider = [[UISlider alloc] initWithFrame:(CGRect){174, 174, 137, 30}];
    slider.minimumValueImage = [UIImage imageNamed:@"Sun-32"];
    slider.maximumValueImage = [[UIImage imageNamed:@"Sun-64"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    slider.minimumTrackTintColor = [[UIColor alloc] initWithRed:240/255.f green:180/255.f blue:30/255.f alpha:1.f];
    slider.maximumTrackTintColor = [[UIColor alloc] initWithRed:28/255.f green:30/255.f blue:35/255.f alpha:1.f];
    slider.thumbTintColor = [UIColor whiteColor];
    slider.tintColor = [UIColor blackColor];
    slider.value = 0.3;
    [slider addTarget:partyMakerVC action:@selector(onSlide:) forControlEvents:UIControlEventValueChanged];
    [partyMakerVC.view addSubview:slider];
    
    
    UISlider *sliderBot = [[UISlider alloc] initWithFrame:(CGRect){121, 229, 137, 30}];
    sliderBot.minimumValueImage = [UIImage imageNamed:@"Sun-32"];
    sliderBot.maximumValueImage = [[UIImage imageNamed:@"Sun-64"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    sliderBot.minimumTrackTintColor = [[UIColor alloc] initWithRed:240/255.f green:180/255.f blue:30/255.f alpha:1.f];
    sliderBot.maximumTrackTintColor = [[UIColor alloc] initWithRed:28/255.f green:30/255.f blue:35/255.f alpha:1.f];
    sliderBot.thumbTintColor = [UIColor whiteColor];
    sliderBot.tintColor = [UIColor blackColor];
    sliderBot.value = 0.3;
    [sliderBot addTarget:partyMakerVC action:@selector(onSlide:) forControlEvents:UIControlEventValueChanged];
    [partyMakerVC.view addSubview:sliderBot];
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:(CGRect){121, 289, 190, 101}];
    scrollView.pagingEnabled = YES;
    scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, 55, 0);
    UIImageView *imageView = [[UIImageView alloc] init];
    [scrollView.viewForFirstBaselineLayout setBackgroundColor:[UIColor grayColor]];
    [scrollView addSubview:imageView];
    scrollView.contentSize = imageView.frame.size;
    UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:(CGRect){0, 1284, 750, 50}];
    pageControl.numberOfPages = 5;
    pageControl.currentPage = 0;
    pageControl.backgroundColor = [UIColor blackColor];
    [pageControl addTarget:partyMakerVC action:@selector(onPageChanged:) forControlEvents:UIControlEventValueChanged];
    
//    pageControl.numberOfPages = scrollView.contentSize.width/[UIScreenmainScreen].bounds.size.width;[partyMakerVC.view addSubview:pageControl];
//    partyMakerVC.pageControl = pageControl;
//    UIView *viewForSliderImages= [[UIView alloc] initWithFrame:(CGRect){121, 229, 190, 101}];
//    viewForSliderImages.scrollView = scrollView;
//    [viewForSliderImages addSubview:pageControl];
    [partyMakerVC.view addSubview:scrollView];
    [partyMakerVC.view addSubview:pageControl];
    
    partyMakerVC.pageControl = pageControl;
    partyMakerVC.scrollView = scrollView;
    
    // до сюда
    
    [self.navigationController pushViewController:partyMakerVC animated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    if (([self.navigationController.viewControllers count]> 1)== YES) {
        [self.view setBackgroundColor: [[UIColor alloc] initWithRed:46/255.f green:49/255.f blue:56/255.f alpha:1.f]];
//        self.title= [NSString stringWithFormat:@"Some %i", (int)[self.navigationController.viewControllers count]];
        self.title= @"Create Party";
    }
    
    
}


@end
