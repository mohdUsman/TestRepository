//
//  MainScreen.m
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/17/13.
//  Copyright (c) 2013 TalismaWorks. All rights reserved.
//


/** Main or home Screen of the application
 *
 * 
 */

#import "MainScreen.h"
#import "SharedResources.h"
#define IS_IPHONE_5 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )
@interface MainScreen ()

@end

@implementation MainScreen
@synthesize mainScreenComboinedView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        mainScreenComboinedView = [[UIView alloc]init];
        [self.view addSubview:mainScreenComboinedView];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self iPhone];
    
    
}

/** To Identify The iPhone5 or other etc
 *
 * 
 */
-(void)iPhone
{
    if( IS_IPHONE_5 )
    {
        //test
        mainScreenComboinedView.frame = CGRectMake(0, 0, 1100, 320);
        mainScreenComboinedView.backgroundColor = [UIColor redColor];
        //test
        UIImageView *img1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 568, 300)];
        img1View.image = [UIImage imageNamed:@"large.png"];
        //[mainScreenComboinedView addSubview:img1View];
        
        UIImageView *imgView2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1136, 300)];
        imgView2.image = [UIImage imageNamed:@"background_2.png"];
        [mainScreenComboinedView addSubview:imgView2];
        
        //test
        UIImageView *img2View = [[UIImageView alloc]initWithFrame:CGRectMake(568, 0, 568, 300)];
        img2View.image = [UIImage imageNamed:@"large1.png"];
        [mainScreenComboinedView addSubview:img2View];
        
        //test
        UIButton *tryButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        tryButton.frame = CGRectMake(0, 100, 100, 50);
        [tryButton setTitle: @"Play" forState: UIControlStateNormal];

        [mainScreenComboinedView addSubview:tryButton];
        [tryButton addTarget:self action:@selector(tryTapped) forControlEvents:UIControlEventTouchUpInside];
        
        
        
    }
    
    else
    {
        
        mainScreenComboinedView.frame = CGRectMake(0, 0, 920, 320);
        mainScreenComboinedView.backgroundColor = [UIColor redColor];
        
    }
}
-(void)tryTapped
{
    [UIView animateWithDuration:3.5f
                          delay:0.0f
                        options:UIViewAnimationOptionTransitionNone
                     animations:^{
                         [mainScreenComboinedView setFrame:CGRectMake(-540, 0, 568, 300)];
                     }
                     completion:nil];
}

-(void)try1Tapped
{
    [UIView animateWithDuration:0.3f
                          delay:0.0f
                        options:UIViewAnimationOptionTransitionNone
                     animations:^{
                         [mainScreenComboinedView setFrame:CGRectMake(0, 0, 568, 300)];
                     }
                     completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
