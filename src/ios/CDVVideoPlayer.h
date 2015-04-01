//
//  CDVVideoPlayer.h
//  cordova-plugin-videoplayer
//
//  Created by ISHITOYA Kentaro on 2015/03/30.
//
//

#import <Cordova/CDV.h>
#import <MediaPlayer/MediaPlayer.h>

@interface CDVVideoPlayer : CDVPlugin{
}

- (void)play:(CDVInvokedUrlCommand*)command;
- (void)close:(CDVInvokedUrlCommand*)command;
@end