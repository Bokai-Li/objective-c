//
//  ViewController.m
//  RollofaDice
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


- (IBAction)roll:(id)sender {
    
    int min = 1;
    int max = 7;
    
    int randomNum = arc4random_uniform(max - min) + min;
    self.label.text = [NSString stringWithFormat:@"Rolled a %i", randomNum];
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Dice%i.png", randomNum]];
    
    
    
}




@end
