//
//  DoorOfDurin.h
//  WelcomeWitcherXMAS2015
//
//  Created by David Lewis on 12/24/15.
//  Copyright © 2015 David Lewis. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AppKit;

@interface DoorOfDurin : NSObject <NSSpeechRecognizerDelegate>


- (BOOL) isLocked;
- (void) speak:(NSString *)phrase;
- (void) listenFor:(NSString *)phrase;

@end
