//
//  PRPViewController.m
//  PRPFirstProjectTweeter
//
//  Created by roberto on 11/13/12.
//  Copyright (c) 2012 Roberto Rivera. All rights reserved.
//

#import "PRPViewController.h"
#import <Social/Social.h>

@interface PRPViewController ()

@end

@implementation PRPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) handleTweetButtonTapped: (id) sender {
    if ([SLComposeViewController isAvailableForServiceType: SLServiceTypeTwitter]) {
        SLComposeViewController *tweetVC =
        [SLComposeViewController composeViewControllerForServiceType:
         SLServiceTypeTwitter];
        [tweetVC setInitialText:
         @"I just finished the first project in iOS SDK Development. #pragsios"]; [self presentViewController:tweetVC animated:YES completion:NULL];
    }else{
        NSLog (@"Can't send tweet");
    }
}

-(IBAction) handleFacebookButtonTapped: (id) sender {
    if ([SLComposeViewController isAvailableForServiceType: SLServiceTypeFacebook]) {
        SLComposeViewController *facebookVC =
        [SLComposeViewController composeViewControllerForServiceType:
         SLServiceTypeFacebook];
        [facebookVC setInitialText:
         @"I just finished the first project in iOS SDK Development. #pragsios"]; [self presentViewController:facebookVC animated:YES completion:NULL];
    }else{
        NSLog (@"Can't send tweet");
    }
}

@end
