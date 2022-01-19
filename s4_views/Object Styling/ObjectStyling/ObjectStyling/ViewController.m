//
//  ViewController.m
//  ObjectStyling
//
//  Created by Aaron Caines on 27/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[self.imageView1 layer] setBorderWidth:10.0f];
    [[self.imageView1 layer] setBorderColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.5].CGColor];
    
    [[self.imageView1 layer] setCornerRadius:30.0f];
    [[self.imageView1 layer] setMasksToBounds:YES];
    
    
    self.imageView2.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.imageView2.layer.shadowOpacity = 0.5;
    self.imageView2.layer.shadowRadius = 5.0f;
    self.imageView2.layer.shadowOffset = CGSizeMake(5, 5);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
