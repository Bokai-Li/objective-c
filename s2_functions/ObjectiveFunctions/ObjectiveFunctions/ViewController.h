//
//  ViewController.h
//  ObjectiveFunctions
//
//  Created by Aaron on 15/06/2017.
//  Copyright © 2017 Aaron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)enterText:(id)sender;

- (IBAction)setColour:(id)sender;
- (IBAction)setBackground:(id)sender;
- (IBAction)fontSize:(id)sender;
- (IBAction)dropShadow:(id)sender;
- (IBAction)shadowColour:(id)sender;
- (IBAction)center:(id)sender;
- (IBAction)left:(id)sender;
- (IBAction)right:(id)sender;

- (IBAction)customFont:(id)sender;

@end

