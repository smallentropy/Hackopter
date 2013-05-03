//
//  HackopterSteeringManager.m
//  Hackopter
//
//  Created by Krzysztof Szczepaniak on 27/04/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "HackopterSteeringManager.h"

@interface HackopterSteeringManager ()

@property (nonatomic, strong) HackopterSoundEmitter *emitter;

@end

@implementation HackopterSteeringManager

@synthesize emitter = _emitter;

- (id)init {
    if (self = [super init]) {
        _emitter = [[HackopterSoundEmitter alloc] init];
    }
    return self;
}

- (void)powerOn:(BOOL)power {
    if (power) {
        [self.emitter setCurrentVolume:1.0f];
    } else {
        [self.emitter setCurrentVolume:self.emitter.initialVolume];
    }
}

- (void)test {
    [self.emitter testSound];
}

@end
