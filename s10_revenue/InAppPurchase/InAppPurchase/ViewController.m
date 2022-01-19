//
//  ViewController.m
//  InAppPurchase
//
//  Created by Aaron Caines on 02/07/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"

#define savePurchase @"Save"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *savedApp = [NSUserDefaults standardUserDefaults];
    bool saved = [savedApp boolForKey:savePurchase];
    
    if (saved) {
        
        [self purchased];
        
    } else {
        
        self.level2button.enabled = NO;
        self.level2button.alpha = 0.5;
        
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)purchased {
    
    self.level2button.enabled = YES;
    self.level2button.alpha = 1.0;
    
    self.unlockLevel2.enabled = NO;
    self.unlockLevel2.hidden = YES;
    
    NSUserDefaults *SavedApp = [NSUserDefaults standardUserDefaults];
    [SavedApp setBool:true forKey:savePurchase];
    [SavedApp synchronize];
    
}



@end
