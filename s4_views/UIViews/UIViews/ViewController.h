//
//  ViewController.h
//  UIViews
//
//  Created by Aaron Caines on 23/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *theView;


- (IBAction)showView:(id)sender;
- (IBAction)hideView:(id)sender;



@end

