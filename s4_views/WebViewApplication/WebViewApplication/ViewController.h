//
//  ViewController.h
//  WebViewApplication
//
//  Created by Aaron Caines on 24/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UISearchBarDelegate> {
    
    NSTimer *timer;
    
}


@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *actInd;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;




@end

