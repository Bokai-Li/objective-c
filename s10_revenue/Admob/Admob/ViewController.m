//
//  ViewController.m
//  Admob
//
//  Created by Aaron Caines on 02/07/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.banner.adUnitID = @"ca-app-pub-7304033372417454/4687987048";
    self.banner.rootViewController = self;
    self.banner.adSize = kGADAdSizeSmartBannerPortrait;
    [self.banner loadRequest:[GADRequest request]];
    
    self.banner.delegate = self;
    
    self.banner.hidden = YES;
    
    self.interstitial = [[GADInterstitial alloc] initWithAdUnitID:@"ca-app-pub-7304033372417454/6164720243"];
    GADRequest *request = [GADRequest request];
    
    [self.interstitial loadRequest:request];
    
}

-(void)adViewDidReceiveAd:(GADBannerView *)bannerView {
    
    self.banner.hidden = NO;
    
}

-(void)adView:(GADBannerView *)bannerView didFailToReceiveAdWithError:(GADRequestError *)error {
    
    self.banner.hidden = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showAd:(id)sender {
    
    if (self.interstitial.isReady) {
        
        [self.interstitial presentFromRootViewController:self];
        [self createAD];
        
    }
    
    
}

-(void)createAD {
    
    self.interstitial = [[GADInterstitial alloc] initWithAdUnitID:@"ca-app-pub-7304033372417454/6164720243"];
    GADRequest *request = [GADRequest request];
    
    [self.interstitial loadRequest:request];
    
    
}





@end
