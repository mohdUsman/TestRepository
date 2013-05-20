//
//  MainScreen.m
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/17/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//

#import "MainScreen.h"
#import "SharedResources.h"
@interface MainScreen ()

@end

@implementation MainScreen

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
	// Do any additional setup after loading the view.
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    
    NSLog(@"Hello World");
    arr = [[SharedResources getSharedResource] allUsers];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
