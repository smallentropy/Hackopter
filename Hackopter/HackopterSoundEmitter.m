//
//  HackopterSoundEmitter.m
//  Hackopter
//
//  Created by Krzysztof Szczepaniak on 27/04/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "HackopterSoundEmitter.h"

@interface HackopterSoundEmitter ()

@property (nonatomic, strong) MPMusicPlayerController *playerController;
@property (nonatomic, strong) AVAudioPlayer *player;

@end

@implementation HackopterSoundEmitter

@synthesize playerController = _playerController;
@synthesize initialVolume = _initialVolume;
@synthesize currentVolume = _currentVolume;
@synthesize player;

#pragma mark - Private Methods
- (float)volumeLevel {
    MPVolumeView *volumeView = [MPVolumeView new];
    
    for (UIView *view in volumeView.subviews) {
        if ([[[view class] description] isEqualToString:@"MPVolumeSlider"]) {
            float initialVolume = [(UISlider *)view value];
            NSLog(@"Initial volume level: %f", initialVolume);
            return initialVolume;
        }
    }    
    return 0.0f;
}

#pragma mark - Public Methods
- (id)init {
    if (self = [super init]) {
        _playerController = [MPMusicPlayerController applicationMusicPlayer];
        NSLog(@"%f", _playerController.volume);
        _initialVolume = [self volumeLevel];
    }
    return self;
}

- (float)currentVolume {
    return self.playerController.volume;
}

- (void)setCurrentVolume:(float)currentVolume {
    NSLog(@"Changing volume level from %f to %f", self.currentVolume, currentVolume);
    self.playerController.volume = currentVolume;
}

- (void)testSound {
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Photek-Avalanche" withExtension:@"mp3"];
    NSError *error = nil;
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    if (!error) {
        if ([player prepareToPlay]) {
            [player play];
        }
    } else {
        NSLog(@"%@", [error description]);
    }
}

@end
