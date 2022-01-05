//
//  ViewController.m
//  ifStatements
//
//  Created by Aaron Caines on 10/10/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // if
    BOOL state = false;
    
    if (state == true) {
        
        self.label1.text = @"Allow Access";
        
    } else {
        
        self.label1.text = @"Deny Access";
        
    }
    
    /// else if
    NSString *name = @"Aaron";
    
    if ([name isEqualToString:@"Dave"]) {
        
        self.label2.text = @"Nice name";
        
    } else if ([name isEqualToString:@"Steve"]) {
        
        self.label2.text = @"Nice name";
        
    } else {
        
        self.label2.text = @"Terrible name";
        
    }
    
    /// > < if
    int number = 400;
    
    if (number > 500) {
        
        self.label3.text = @"Unlock level 2";
        
    } else {
        
        self.label3.text = @"Retry";
        
    }
    
    
    // or
    NSString *colour = @"Blue";
    
    if ([colour isEqualToString:@"Green"] || [colour isEqualToString:@"Blue"]) {
        
        self.label4.text = @"Nice colour";
        
    }
    
    /// &
    
    NSString *username = @"RedKitty123";
    NSString *password = @"Apple123";
    
    if ([username isEqualToString:@"RedKitty123"] && [password isEqualToString:@"Apple123"]) {
        
        self.label5.text = @"Grant Access";
        
        
    } else if ([username isEqualToString:@"RedKitty123"]) {
        
        self.label5.text = @"Password Incorrect";
        
    } else if ([password isEqualToString:@"Apple123"]) {
        
        self.label5.text = @"Username Incorrect";
        
    } else {
        
        self.label5.text = @"Both Incorrect";
        
    }
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
