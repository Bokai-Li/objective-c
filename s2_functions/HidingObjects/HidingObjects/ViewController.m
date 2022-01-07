//
//  ViewController.m
//  HidingObjects
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


- (IBAction)hide:(id)sender {
    
    self.label.hidden = YES;
    self.segControl.hidden = YES;
    self.slider.hidden = YES;
    
    
}

- (IBAction)reveal:(id)sender {
    
    self.label.hidden = NO;
    self.segControl.hidden = NO;
    self.slider.hidden = NO;
    
    
}

- (IBAction)amIHidden:(id)sender {
    
    if (self.label.hidden == YES) {
        
        self.label2.text = @"the object is hidden";
        
    } else {
        
        self.label2.text = @"the object is not hidden";
        
        
    }
    
    
    
}





@end
