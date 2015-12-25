//
//  DoorOfDurin.m
//  WelcomeWitcherXMAS2015
//
//  Created by David Lewis on 12/24/15.
//  Copyright © 2015 David Lewis. All rights reserved.
//

#import "DoorOfDurin.h"


@implementation DoorOfDurin {
    BOOL isLocked;
    NSSpeechSynthesizer *synthesizer;
    NSSpeechRecognizer *recognizer;
}

- (id)init
{
    self = [super init];
    
    synthesizer = [[NSSpeechSynthesizer alloc] init];
    recognizer = [[NSSpeechRecognizer alloc] init];
    recognizer.listensInForegroundOnly = NO;
    recognizer.blocksOtherRecognizers = YES;
    isLocked = YES;
    
    return self;
}

- (BOOL) isLocked {
    return isLocked;
}

- (void) speak:(NSString *)phrase {
    if (phrase && synthesizer) {
        [synthesizer startSpeakingString:phrase];
    }
}

- (void) listenFor:(NSString *)phrase {
    if (phrase && recognizer) {
        [recognizer setDelegate:self];
        [recognizer setCommands:@[phrase]];
        [recognizer startListening];
    }
    
    
}


-(void) speechRecognizer:(NSSpeechRecognizer *)sender didRecognizeCommand:(NSString *)command {
    [self speak:@"Unlocked"];
    isLocked = NO;
    [recognizer stopListening];
}
//- (void)speechRecognizer:(NSSpeechRecognizer *)sender didRecognizeCommand:(NSString *)command {
//    NSLog(@"Recognized command: %@", command);
//    isLocked = NO;
//    NSLog(@"DOOR UNLOCKED");
//    [self speak:@"Unlocked Door"];
//}

@end
