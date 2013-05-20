//
//  PlayedWordsByUsers.h
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 TalismaWorks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayedWordsByUsers : NSObject
{
    int pwUserId;
    int pwGroupId;
    int pwWordId; //Last Played
}
@end
