//
//  Packs.h
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 TalismaWorks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Packs : NSObject
{
    int packId;
    NSString *packName;
}
@property(nonatomic , strong)NSString *packName;
@end
