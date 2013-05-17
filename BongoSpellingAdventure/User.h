//
//  Users.h
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
    int user_id;
    NSString* userName;
    NSString* grade;
    int age;
    NSString* score;
    NSString* avatar;
}

@property (assign) int user_id;
@property (nonatomic, strong) NSString* userName;
@property (strong, nonatomic) NSString* grade;
@property (nonatomic, assign) int age;
@property (nonatomic, strong) NSString* score;
@property (nonatomic, strong) NSString* avatar;

@end
