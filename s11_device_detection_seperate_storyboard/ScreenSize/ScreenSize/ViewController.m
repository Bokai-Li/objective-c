//
//  ViewController.m
//  ScreenSize
//
//  Created by Aaron Caines on 02/07/2017.
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


- (IBAction)screenSize:(id)sender {
    
    float height = [[UIScreen mainScreen] bounds].size.height;
    
    // iPhone SE 5
    if (height == 568) {
        
        self.label.text = @"iPhone SE 5";
        
    }
    
    // iPhone 6 7 8
    if (height == 667) {
        
        self.label.text = @"iPhone 6 7 8";
        
    }
    
    // iPhone 6+ 7+ 8+
    if (height == 736) {
        
        self.label.text = @"iPhone 6+ 7+ 8+";
        
    }
    
    // iPad Mini Air
    if (height == 1024) {
        
        self.label.text = @"iPad Mini Air";
        
    }
    
    // iPad 10.5
    if (height == 1112) {
        
        self.label.text = @"iPad 10.5";
        
    }
    
    // iPad 12.9
    if (height == 1366) {
        
        self.label.text = @"iPad 12.9";
        
    }
    
    
    
    
}





@end
