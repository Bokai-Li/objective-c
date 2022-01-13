//
//  ViewController.m
//  UISegmentedControl
//
//  Created by Aaron Caines on 22/06/2017.
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


- (IBAction)segControl:(id)sender {
    
    if (self.segmentControl.selectedSegmentIndex == 0) {
        
        self.label.text = @"Segment 1 was selected";
        
    } else if (self.segmentControl.selectedSegmentIndex == 1) {
        
        self.label.text = @"Segment 2 was selected";
        
    } else if (self.segmentControl.selectedSegmentIndex == 2) {
        
        self.label.text = @"Segment 3 was selected";
        
    } else if (self.segmentControl.selectedSegmentIndex == 3) {
        
        self.label.text = @"Segment 4 was selected";
        
    }
    
    
    
}





@end
