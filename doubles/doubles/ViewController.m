//
//  ViewController.m
//  doubles
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
    
    double1 = 100.343;
    double2 = 213.324;
    
    double score = double1 + double2;
    
    self.label.text = [NSString stringWithFormat:@"%.1f", score];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
