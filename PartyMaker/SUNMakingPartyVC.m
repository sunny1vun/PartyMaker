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

-(void)viewWillAppear:(BOOL)animated{
    if (([self.navigationController.viewControllers count]> 1)== YES) {
        [self.view setBackgroundColor: [[UIColor alloc] initWithRed:46/255.f green:49/255.f blue:56/255.f alpha:1.f]];
        //        self.title= [NSString stringWithFormat:@"Some %i", (int)[self.navigationController.viewControllers count]];
        self.title= @"Create Party";
    }
    
    
}

-(void)changeColor{
    
//    [self.view setBackgroundColor: [UIColor random]];
    
}

-(void)dropToPop{
    
//    [self.navigationController popToRootViewControllerAnimated:YES];
    
}
#pragma mark- Making UnclickAbleFronend

-(void)addRound:(NSString*) forLabel{
    if ([forLabel isEqualToString:@"CHOOSE DAY"]) {
        UIView *round= [[UIView alloc] initWithFrame:CGRectMake(10.f, 139.5f, 10.f, 10.f)];
        //    UIView *dateView= [[UIView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];
//        UILabel *labelOfRound = [[UILabel alloc] initWithFrame:(CGRect){}];
    }
//    else if(){}

}

-(void)addLine{
    
}

#pragma mark- Making ClickableFrontend

-(void)addDateButton{
    UIButton *chooseDate= [UIButton buttonWithType:UIButtonTypeCustom];
    chooseDate.frame= (CGRect){121, 74, 190, 37};
    chooseDate.layer.cornerRadius= 3.f;
//    chooseDate.titleLabel.font
    chooseDate.backgroundColor= [[UIColor alloc] initWithRed:239/255.f green:177/255.f blue:27/255.f alpha:1.f];
    [chooseDate setTitle:@"Normal"forState:UIControlStateNormal];
    [chooseDate setTitle:@"Highlighted"forState:UIControlStateHighlighted];
    [chooseDate setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [chooseDate addTarget:self action:@selector(onDateClicked:) forControlEvents:UIControlEventTouchUpInside];
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
    UISlider *slider = [[UISlider alloc] initWithFrame:(CGRect){174, 170, 137, 30}];
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
    UISlider *sliderBot = [[UISlider alloc] initWithFrame:(CGRect){121, 213, 137, 30}];
    sliderBot.minimumValueImage = [UIImage imageNamed:@"Sun-32"];
    sliderBot.maximumValueImage = [[UIImage imageNamed:@"Sun-64"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    sliderBot.minimumTrackTintColor = [[UIColor alloc] initWithRed:240/255.f green:180/255.f blue:30/255.f alpha:1.f];
    sliderBot.maximumTrackTintColor = [[UIColor alloc] initWithRed:28/255.f green:30/255.f blue:35/255.f alpha:1.f];
    sliderBot.thumbTintColor = [UIColor whiteColor];
    sliderBot.tintColor = [UIColor blackColor];
    sliderBot.value = 0.3;
    [sliderBot addTarget:self action:@selector(onSlide:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sliderBot];
}

-(void)addScrollViewWithPageControl{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:(CGRect){121, 254, 190, 101}];
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
    [pageControl addTarget:self action:@selector(onPageChanged:) forControlEvents:UIControlEventValueChanged];
    
    //    pageControl.numberOfPages = scrollView.contentSize.width/[UIScreenmainScreen].bounds.size.width;[partyMakerVC.view addSubview:pageControl];
    //    partyMakerVC.pageControl = pageControl;
    //    UIView *viewForSliderImages= [[UIView alloc] initWithFrame:(CGRect){121, 229, 190, 101}];
    //    viewForSliderImages.scrollView = scrollView;
    //    [viewForSliderImages addSubview:pageControl];
    [self.view addSubview:scrollView];
    [self.view addSubview:pageControl];
    
    self.pageControl = pageControl;
    self.scrollView = scrollView;
}

-(void)addTextView{
    UITextView *textView = [[UITextView alloc] initWithFrame:(CGRect){121, 366, 185, 100}];
    textView.text = @"Some text";
    textView.font = [UIFont fontWithName:@"Arial-Bold" size:18];
    textView.backgroundColor = [UIColor yellowColor];
    textView.textColor = [UIColor brownColor];
//    textView.delegate = self;
    [self.view addSubview:textView];
}

-(void)addSaveButton{
    UIButton *chooseSave= [UIButton buttonWithType:UIButtonTypeCustom];
    chooseSave.frame= (CGRect){121, 478, 190, 36};
    chooseSave.layer.cornerRadius= 3.f;
    chooseSave.backgroundColor= [[UIColor alloc] initWithRed:140/255.f green:186/255.f blue:29/255.f alpha:1.f];
    [chooseSave setTitle:@"Save"forState:UIControlStateNormal];
    [chooseSave setTitle:@"Highlighted"forState:UIControlStateHighlighted];
    [chooseSave setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [chooseSave addTarget:self action:@selector(onSaveClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chooseSave];
}
-(void)addCancelButton{
    UIButton *chooseCancel= [UIButton buttonWithType:UIButtonTypeCustom];
    chooseCancel.frame= (CGRect){121, 522, 190, 36};
    chooseCancel.layer.cornerRadius= 3.f;
    chooseCancel.backgroundColor= [[UIColor alloc] initWithRed:236/255.f green:71/255.f blue:19/255.f alpha:1.f];
    [chooseCancel setTitle:@"Cancel"forState:UIControlStateNormal];
    [chooseCancel setTitle:@"Highlighted"forState:UIControlStateHighlighted];
    [chooseCancel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [chooseCancel addTarget:self action:@selector(onCancelClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chooseCancel];
}

#pragma mark- Making Backend

#pragma mark- Working with PartyMakerView
-(void)makeParty{
    
    SUNMakingPartyVC *partyMakerVC =[SUNMakingPartyVC new];
    partyMakerVC.view = [[UIView alloc] initWithFrame:self.view.frame];
//    UIView *dateView= [[UIView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];
    [partyMakerVC.navigationItem setHidesBackButton:YES];
    [partyMakerVC addRound:@"CHOOSE DAY"];
    [partyMakerVC addDateButton];
    [partyMakerVC addTextField];
    [partyMakerVC addTopSlider];
    [partyMakerVC addBotSlider];
    [partyMakerVC addScrollViewWithPageControl];
    [partyMakerVC addTextView];
    [partyMakerVC addSaveButton];
    [partyMakerVC addCancelButton];
    
    
    [self.navigationController pushViewController:partyMakerVC animated:YES];
}


@end
