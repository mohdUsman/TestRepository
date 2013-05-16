//
//  Users.h
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Users : NSObject
{
    int user_id;
    NSString *userName;
    int grade;
    int age;
    NSString *score;
}

@property(nonatomic , strong)NSString *userName;
@property(nonatomic , strong)NSString *score;
@end
