//
//  Words.h
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Words : NSObject
{
    int wordsId;
    int wGroupId;
    NSString *words;
}
@property(nonatomic , strong) NSString *words;
@end
