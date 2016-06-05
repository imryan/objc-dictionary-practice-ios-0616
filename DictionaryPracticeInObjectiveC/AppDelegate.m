//
//  AppDelegate.m
//  objc-dictionary-practice
//
//  Created by Flatiron School on 5/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSDictionary *favoriteBands = @{
                                    @"Nirvana"             : @"",
                                    @"Stone Temple Pilots" : @"",
                                    @"Smashing Pumpkins"   : @"",
                                    };
    
    NSLog(@"My favorite bands are: %@", favoriteBands);
    
    NSMutableDictionary *mFavoriteBands = [NSMutableDictionary dictionaryWithDictionary:favoriteBands];
    mFavoriteBands[@"Nirvana"] = @"MTV Unplugged";
    mFavoriteBands[@"Stone Temple Pilots"] = @"Thank You";
    mFavoriteBands[@"Smashing Pumpkins"] = @"Siamese Dream";
    
    NSLog(@"My favorite bands are: %@", mFavoriteBands);
    
    [mFavoriteBands removeObjectForKey:@"Smashing Pumpkins"];
    
    NSLog(@"My favorite bands are: %@", mFavoriteBands);
    
    NSArray *favoriteBandKeys = [mFavoriteBands allKeys];
    
    for (NSString *band in favoriteBandKeys) {
        NSLog(@"%@'s album: %@", band, [mFavoriteBands objectForKey:band]);
    }
    
    NSDictionary *thankYouAlbum = @{
                                     @1 : @"Creep",
                                     @2 : @"Plush",
                                     @3 : @"Big Empty",
                                   };
    
    NSDictionary *unpluggedAlbum = @{
                                    @1 : @"About A Girl",
                                    @2 : @"Come As You Are",
                                    @3 : @"Oh Me",
                                    };
    
    
    [mFavoriteBands setObject:thankYouAlbum forKey:@"Stone Temple Pilots"];
    [mFavoriteBands setObject:unpluggedAlbum forKey:@"Nirvana"];
    
    for (NSString *track in [mFavoriteBands[@"Stone Temple Pilots"] allKeys]) {
        NSLog(@"Song: %@", [mFavoriteBands[@"Stone Temple Pilots"] objectForKey:track]);
    }
    
    NSMutableDictionary *favoriteAlbums = [NSMutableDictionary new];
    for (NSDictionary *band in [mFavoriteBands allKeys]) {
        [favoriteAlbums addEntriesFromDictionary:[mFavoriteBands objectForKey:band]];
    }
    
    NSLog(@"Favorite albums: %@", favoriteAlbums);
    
    return YES;
}

@end
