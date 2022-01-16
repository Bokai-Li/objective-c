//
//  ViewController.m
//  UIAlertViews
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


- (IBAction)alertView:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title" message:@"Message" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *button = [UIAlertAction actionWithTitle:@"Button" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        self.label.text = @"Hello";
        
        
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
        [alert dismissViewControllerAnimated:YES completion:nil];
        
        
    }];
    
    [alert addAction:button];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
    
}





@end
