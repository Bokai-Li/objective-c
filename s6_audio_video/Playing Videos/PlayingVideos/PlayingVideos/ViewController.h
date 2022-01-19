//
//  ViewController.h
//  PlayingVideos
//
//  Created by Aaron Caines on 27/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;


- (IBAction)playVideo:(id)sender;
- (IBAction)streamVideo:(id)sender;

@end

