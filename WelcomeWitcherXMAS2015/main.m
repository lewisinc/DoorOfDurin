//
//  main.m
//  WelcomeWitcherXMAS2015
//
//  Created by David Lewis on 12/24/15.
//  Copyright © 2015 David Lewis. All rights reserved.
//

@import Foundation;
@import AppKit;
#import "DoorOfDurin.h"

void revealContent() {
    // Do something cool.
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *riddle = @"Speak friend and enter.";
        NSString *answer = @"mel-lon";

        DoorOfDurin *door = [DoorOfDurin new];
        [door speak:riddle];
        [door listenFor:answer];
        
        int count = 0;
        BOOL isLocked = YES;
        while (isLocked == YES) {
            NSLog(@"Looping iteration %d", count);
            isLocked = [door isLocked];
            count++;
        }
        
        revealContent();
        
    }

    return 0;
}


