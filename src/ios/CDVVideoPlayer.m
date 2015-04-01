//
//  CPVideoPlayer.m
//  cordova-plugin-videoplayer
//
//  Created by ISHITOYA Kentaro on 2015/03/30.
//
//

#import "CDVVideoPlayer.h"

@interface CDVVideoPlayer ()
@property (nonatomic, strong) MPMoviePlayerViewController *playerController;
@property (nonatomic, assign) BOOL isPlaing;
@end

@implementation CDVVideoPlayer
- (void)play:(CDVInvokedUrlCommand*)command{
    if(command.arguments.count != 2){
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Argument Error, file URL as argument1, and options as argument 2"];
        [self.commandDelegate  sendPluginResult:pluginResult callbackId:command.callbackId];
    }
    
    //Extract arguments
    NSURL *contentURL = [[NSURL alloc] initWithString:[command argumentAtIndex: 0]];
    NSDictionary *options = (NSDictionary *)[command argumentAtIndex:1];
    float volume = 1.0;
    if(options[@"volume"]){
        volume = [options[@"volume"] floatValue];
    }
    int scalingMode = 1;
    if(options[@"scalingMode"]){
        scalingMode = [options[@"scalingMode"] intValue];
    }
    
    //instanciate MPMoviePlayer
    self.playerController = [[MPMoviePlayerViewController alloc] initWithContentURL:contentURL];
    [self.viewController presentViewController:self.playerController animated:YES completion:nil];
    [self.playerController.moviePlayer play];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"OK"];
    [self.commandDelegate  sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)close:(CDVInvokedUrlCommand*)command{
    if(!self.playerController){
        return;
    }
    [self.playerController.presentingViewController dismissMoviePlayerViewControllerAnimated];
}
@end
