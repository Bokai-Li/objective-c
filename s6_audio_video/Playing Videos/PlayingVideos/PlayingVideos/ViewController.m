//
//  ViewController.m
//  PlayingVideos
//
//  Created by Aaron Caines on 27/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *embedCode = @"<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/UjYemgbhJF0\" frameborder=\"0\" allowfullscreen></iframe>";
    [[self webView] loadHTMLString:embedCode baseURL:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playVideo:(id)sender {
    
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"SampleVideo_1280x720_5mb" withExtension:@"mp4"];
    
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    controller.player = player;
    [player play];
    
    [self presentViewController:controller animated:YES completion:nil];
    
    
}

- (IBAction)streamVideo:(id)sender {
    
    NSURL *videoURL = [NSURL URLWithString:@"http://www.sample-videos.com/video/mp4/720/big_buck_bunny_720p_5mb.mp4"];
    
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    controller.player = player;
    [player play];
    
    [self presentViewController:controller animated:YES completion:nil];
    
    
}








@end
