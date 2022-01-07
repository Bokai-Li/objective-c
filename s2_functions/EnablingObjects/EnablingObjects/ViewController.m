//
//  ViewController.m
//  EnablingObjects
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


- (IBAction)enable:(id)sender {
    
    self.button.enabled = YES;
    self.segControl.enabled = YES;
    self.slider.enabled = YES;
    self.switchControl.enabled = YES;
    
    
    
}

- (IBAction)disable:(id)sender {
    
    self.button.enabled = NO;
    self.segControl.enabled = NO;
    self.slider.enabled = NO;
    self.switchControl.enabled = NO;
    
    
}

- (IBAction)amIEnbaled:(id)sender {
    
    if (self.button.enabled == YES) {
        
        self.label.text = @"i am enabled";
        
    } else {
        
        self.label.text = @"i am not enabled";
        
    }
    
    
    
}




@end
