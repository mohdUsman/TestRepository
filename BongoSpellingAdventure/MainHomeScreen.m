//
//  MainHomeScreen.m
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/20/13.
//  Copyright (c) 2013 TalismaWorks. All rights reserved.
//

#import "MainHomeScreen.h"

@interface MainHomeScreen ()

@end

@implementation MainHomeScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setHomeView:nil];
    [super viewDidUnload];
}
@end
