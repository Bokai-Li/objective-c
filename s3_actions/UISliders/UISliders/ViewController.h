//
//  ViewController.h
//  UISliders
//
//  Created by Aaron Caines on 22/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *silder;



- (IBAction)fontSize:(id)sender;


@end

