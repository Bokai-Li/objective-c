//
//  ViewController.m
//  Actions
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


- (IBAction)action1:(id)sender {
    
    self.label.text = @"Action1";
    
}

- (IBAction)action2:(id)sender {
    
    self.label.text = @"Action2";
    
}

- (IBAction)action3:(id)sender {
    
    [self triggerAction];
    
}

-(void)triggerAction {
    
    self.label.text = @"Action3";
    
    
}


@end
