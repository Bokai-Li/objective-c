//
//  ViewController.m
//  DisplayingImages
//
//  Created by Aaron Caines on 26/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imageView1.image = [UIImage imageNamed:@"Dog.png"];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showMeTheImage:(id)sender {
    
    self.imageView2.image = [UIImage imageNamed:@"Dog.png"];
    
}



@end
