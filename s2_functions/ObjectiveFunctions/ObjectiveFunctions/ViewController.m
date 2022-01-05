//
//  ViewController.m
//  ObjectiveFunctions
//
//  Created by Aaron on 15/06/2017.
//  Copyright © 2017 Aaron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = @"Apple";
    self.textView.text = @"Banana";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)enterText:(id)sender {
    
    self.label.text = self.textField.text;
    [self resignFirstResponder];
    
}




- (IBAction)setColour:(id)sender {
    
    self.label.textColor = [UIColor redColor];
    
}

- (IBAction)setBackground:(id)sender {
    
    self.label.backgroundColor = [UIColor blackColor];
    
}

- (IBAction)fontSize:(id)sender {
    
    [self.label setFont:[UIFont fontWithName:@"Futura" size:30]];
    
}

- (IBAction)dropShadow:(id)sender {
    
    self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.label.layer.shadowOpacity = 0.5;
    self.label.layer.shadowRadius = 1.0f;
    self.label.layer.shadowOffset = CGSizeMake(2, 2);
    
}

- (IBAction)shadowColour:(id)sender {
    
    self.label.layer.shadowColor = [[UIColor blueColor] CGColor];
    
}

- (IBAction)center:(id)sender {
    
    self.label.textAlignment = NSTextAlignmentCenter;
    
}

- (IBAction)left:(id)sender {
    
    self.label.textAlignment = NSTextAlignmentLeft;
    
}

- (IBAction)right:(id)sender {
    
    self.label.textAlignment = NSTextAlignmentRight;
    
}

- (IBAction)customFont:(id)sender {
    
    [self.label setFont:[UIFont fontWithName:@"edgeracer" size:30]];
    
    
}






-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
        
        return YES;
        
    }
    
    [textView resignFirstResponder];
    
    return NO;
}







@end
