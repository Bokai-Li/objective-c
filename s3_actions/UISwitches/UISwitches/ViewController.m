//
//  ViewController.m
//  UISwitches
//
//  Created by Aaron Caines on 22/06/2017.
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


- (IBAction)switchButton:(id)sender {
    
    if (self.switchAction.on) {
        
        self.label.text = @"On";
        self.button.enabled = YES;
        
    } else {
        
        self.label.text = @"Off";
        self.button.enabled = NO;
        
    }
    
    
    
    
}




@end
