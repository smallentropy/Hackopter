//
//  HackopterSoundEmitter.h
//  Hackopter
//
//  Created by Krzysztof Szczepaniak on 27/04/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

@interface HackopterSoundEmitter : NSObject

@property (nonatomic, assign) float initialVolume;
@property (nonatomic, assign) float currentVolume;

- (void)testSound;

@end
