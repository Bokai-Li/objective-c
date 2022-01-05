//
//  ViewController.m
//  Strings
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
    
    name = @"Aaron";
    
    NSString *word = @"Goodbye";
    
    self.label.text = [NSString stringWithFormat:@"%@ %@",word, name];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
