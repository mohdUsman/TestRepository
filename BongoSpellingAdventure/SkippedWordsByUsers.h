//
//  SkippedWordsByUsers.h
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SkippedWordsByUsers : NSObject
{
    int swUserId;
    int swGroupId;
    int swWordId; //Id of last skipped word
}
@end
