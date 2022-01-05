//
//  ViewController.m
//  booleans
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
    
    bool1 = YES;
    bool2 = true;
    
    self.mySwitch.on = bool1;
    
    self.button.enabled = bool2;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
