//
//  ViewController.m
//  RandomNumberGen
//
//  Created by Aaron Caines on 21/06/2017.
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


- (IBAction)random0100:(id)sender {
    
    int randomNum = arc4random() % 101;
    self.label1.text = [NSString stringWithFormat:@"%i", randomNum];
}

- (IBAction)random1020:(id)sender {
    
    int min = 10;
    int max = 21;
    
    int randomNum2 = arc4random_uniform(max - min) + min;
    self.label2.text = [NSString stringWithFormat:@"%i", randomNum2];
    
    
}



@end
