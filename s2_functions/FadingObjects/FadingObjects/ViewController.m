//
//  ViewController.m
//  FadingObjects
//
//  Created by Aaron Caines on 20/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)fadeIn:(id)sender {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:5.0];
    
    [self.label setAlpha:1.0];
    [self.textView setAlpha:1.0];
    [self.segControl setAlpha:1.0];
    [self.switchControl setAlpha:1.0];
    
    [UIView commitAnimations];
    
    
    
}

- (IBAction)fadeOut:(id)sender {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:5.0];
    
    [self.label setAlpha:0];
    [self.textView setAlpha:0];
    [self.segControl setAlpha:0];
    [self.switchControl setAlpha:0];
    
    [UIView commitAnimations];
    
    
}

- (IBAction)whatIsMyAlpha:(id)sender {
    
    self.label2.text = [NSString stringWithFormat:@"%1.2f", self.label.alpha];
    
}






@end
