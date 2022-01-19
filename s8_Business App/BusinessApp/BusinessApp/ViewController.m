//
//  ViewController.m
//  BusinessApp
//
//  Created by Aaron Caines on 30/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.button1.layer.cornerRadius = 5;
    self.button2.layer.cornerRadius = 5;
    self.button3.layer.cornerRadius = 5;
    self.button4.layer.cornerRadius = 5;
    self.button5.layer.cornerRadius = 5;
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)services:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:2];
    
}

- (IBAction)portfolio:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:3];
    
    
}

- (IBAction)aboutUs:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:1];
    
    
}

- (IBAction)contactUs:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:4];
    
    
}


@end
