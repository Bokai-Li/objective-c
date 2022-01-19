//
//  ViewController.m
//  BackgroundColour
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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)red:(id)sender {
    
    self.view.backgroundColor = [UIColor redColor];
    
}

- (IBAction)blue:(id)sender {
    
    self.view.backgroundColor = [UIColor blueColor];
    
}

- (IBAction)green:(id)sender {
    
    self.view.backgroundColor = [UIColor greenColor];
    
}

- (IBAction)yellow:(id)sender {
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    
}

- (IBAction)black:(id)sender {
    
    self.view.backgroundColor = [UIColor blackColor];
    
    
}

- (IBAction)white:(id)sender {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
}

- (IBAction)custom:(id)sender {
    
    self.view.backgroundColor = [UIColor colorWithRed:224.0/255.0 green:79.0/255.0 blue:0.0/255.0 alpha:1.0];
    
}



@end
