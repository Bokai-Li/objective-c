//
//  ViewController.h
//  NSTimers
//
//  Created by Aaron on 15/06/2017.
//  Copyright © 2017 Aaron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    int countInt;
    
}


@property (strong, nonatomic) IBOutlet UILabel *label;

- (IBAction)start:(id)sender;
- (IBAction)pause:(id)sender;
- (IBAction)restart:(id)sender;



@end

