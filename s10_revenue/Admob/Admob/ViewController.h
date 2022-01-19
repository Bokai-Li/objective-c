//
//  ViewController.h
//  Admob
//
//  Created by Aaron Caines on 02/07/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMobileAds;

@interface ViewController : UIViewController <GADBannerViewDelegate> {
    
    
    
}

@property (weak, nonatomic) IBOutlet GADBannerView *banner;
@property (strong, nonatomic) GADInterstitial *interstitial;

- (IBAction)showAd:(id)sender;




@end

