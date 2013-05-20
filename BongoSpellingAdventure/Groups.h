//
//  Groups.h
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 TalismaWorks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Groups : NSObject
{
    int groupId;
    int gPackId;
    NSString *packName;
    
}
@property(nonatomic , strong)NSString *packName;
@end
