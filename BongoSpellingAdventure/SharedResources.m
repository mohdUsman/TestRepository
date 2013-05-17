//
//  SharedResources.m
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//

#import "SharedResources.h"
#import "User.h"

static SharedResources* sharedResource;

@implementation SharedResources

@synthesize dbManager;
@synthesize usersList;
@synthesize activeUser;
@synthesize settings;


+ (SharedResources*) getSharedResource {
    
    @synchronized(self)
	{
        if (sharedResource == nil)
		{
            sharedResource=[[self alloc] init];
		}
    }
    return sharedResource;
}

-(id)init {
    
    if (self = [super init]) {
        
    }
    return self;
}

/** Returns list of all users. If the list is empty, it fetches it from database
 *
 * @return: NSMutableArray
 */
- (NSMutableArray*)allUsers;
{
    if (!self.usersList) {
        // get from database
    }
    
    // it can hold zero objects first time of no user is created
    return usersList;
}

/** Returns currently active user. If it's nil, it finds it in database. If there is no user, it returns nil
 *
 * @return: User activeUser
 */
- (User*) currentActiveUser {
    
    if (!self.activeUser) {
        //get from database
    }
    
    // it can still be nil if there is no user created
    return activeUser;
}

/** Returns settings
 *
 * @return: Settings
 */
- (Settings*) getAppSettings {
    
    if (!self.settings) {
        //pick from pList
    }
    
    return settings;
}

/** Updates settings to new values
 *
 * @param: Settings
 * @return: nil
 */
- (void) updateSettingsWithValues:(Settings*)newSettings {
    
}

/** Updates settings to default values
 *
 * @param: nil
 * @return: nil
 */
- (void) resetSettings {
    
}



@end
