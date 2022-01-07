//
//  ViewController.h
//  HidingObjects
//
//  Created by Aaron Caines on 20/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label2;


- (IBAction)hide:(id)sender;
- (IBAction)reveal:(id)sender;
- (IBAction)amIHidden:(id)sender;


@end

