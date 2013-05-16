//
//  SharedResources.m
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//

#import "SharedResources.h"

static SharedResources* sharedResource;
@implementation SharedResources
+ (SharedResources*) getSharedResource {
    
    @synchronized(self)
	{
        if (sharedResource == nil)
		{
            sharedResource=[[self alloc] init];
            
		}
        
        return sharedResource;
    }
}

-(id)init {
    
    if (self = [super init]) {
        
    }
    return self;
}
@end
