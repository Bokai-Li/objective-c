//
//  ViewController.m
//  Arrays
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
    
    NSArray *array = @[@"Apple", @"Banana", @"Orange"];
    
    self.label.text = array[2];
    
    NSMutableArray *array2 = [[NSMutableArray alloc] initWithObjects:@"Apple", @"Banana", @"Orange", nil];
    
    [array2 addObject:@"Melon"];
    
    [array2 insertObject:@"Strawberry" atIndex:3];
    
    [array2 removeObjectAtIndex:3];
    
    self.label2.text = [NSString stringWithFormat:@"%lu", array2.count];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
