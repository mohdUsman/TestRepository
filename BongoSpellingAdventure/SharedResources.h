//
//  SharedResources.h
//  BongoSpellingAdventure
//
//  Created by Muhammad Usman on 5/14/13.
//  Copyright (c) 2013 Muhammad Usman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DatabaseManager;
@class User;
@class Settings;

@interface SharedResources : NSObject {
    
    DatabaseManager* dbManager;
    NSMutableArray* usersList;
    User* activeUser;
    Settings* settings;
}

@property (strong, nonatomic) DatabaseManager* dbManager;
@property (strong, nonatomic) NSMutableArray* usersList;
@property (strong, nonatomic) User* activeUser;
@property (strong, nonatomic) Settings* settings;

+(SharedResources*) getSharedResource;
-(id)init;

/** Returns list of all users. If the list is empty, it fetches it from database
 *
 * @return: NSMutableArray
 */
- (NSMutableArray*)allUsers;

/** Returns currently active user. If it's nil, it finds it in database. If there is no user, it returns nil
 *
 * @return: User activeUser
 */
- (User*) currentActiveUser;

/** Returns settings
 *
 * @return: Settings
 */
- (Settings*) getAppSettings;

/** Updates settings to new values
 *
 * @param: Settings
 * @return: nil
 */
- (void) updateSettingsWithValues:(Settings*)newSettings;

/** Updates settings to default values
 *
 * @param: nil
 * @return: nil
 */
- (void) resetSettings;

@end
