//
//  ViewController.m
//  VarConst
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
    
    NSString *word1 = @"Hello";
    
    NSString * const word2 = @"Goodbye";
    
    word1 = @"123";
    
    word2 = @"123";
    
    int int1 = 10;
    
    const int int2 = 50;
    
    int2 = 100;
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
