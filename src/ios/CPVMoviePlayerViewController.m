//
//  CPVMoviePlayerViewController.m
//  cordova-plugin-videoplayer
//
//  Created by ISHITOYA Kentaro on 2015/03/30.
//
//

#import "CPVMoviePlayerViewController.h"

@interface CPVMoviePlayerViewController ()

@end

@implementation CPVMoviePlayerViewController
- (void)showMessage:(CDVInvokedUrlCommand*)command{
	NSLog(@"%@", command);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
