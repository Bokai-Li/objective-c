//
//  SocialViewController.h
//  BusinessApp
//
//  Created by Aaron Caines on 30/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SocialViewController : UIViewController {
    
    NSTimer *timer;
    
}

@property(strong, nonatomic) NSString *detail;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *actInd;



@end
