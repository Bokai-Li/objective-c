//
//  ViewController.m
//  URLLinks
//
//  Created by Aaron Caines on 23/06/2017.
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


- (IBAction)urlLink:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com"] options:@{} completionHandler:nil];
    
    
}




@end
