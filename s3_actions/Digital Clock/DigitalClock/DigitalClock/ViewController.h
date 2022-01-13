//
//  ViewController.h
//  DigitalClock
//
//  Created by Aaron Caines on 22/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    
}



@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
@property (weak, nonatomic) IBOutlet UIView *settingsView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColour;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundColour;

- (IBAction)clockSeg:(id)sender;
- (IBAction)backgroundSeg:(id)sender;
- (IBAction)settings:(id)sender;




@end

