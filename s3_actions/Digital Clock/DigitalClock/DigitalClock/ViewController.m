//
//  ViewController.m
//  DigitalClock
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
    
    [self updateTime];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    self.settingsView.hidden = YES;
    self.settingsButton.alpha = 0.25;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateTime {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.label.text = [formatter stringFromDate:[NSDate date]];
    
    
}

- (IBAction)clockSeg:(id)sender {
    
    if (self.clockColour.selectedSegmentIndex == 0) {
        
        self.label.textColor = [UIColor whiteColor];
        
    } else if (self.clockColour.selectedSegmentIndex == 1) {
        
        self.label.textColor = [UIColor blackColor];
        
    } else if (self.clockColour.selectedSegmentIndex == 2) {
        
        self.label.textColor = [UIColor greenColor];
        
    } else if (self.clockColour.selectedSegmentIndex == 3) {
        
        self.label.textColor = [UIColor redColor];
        
    }
    
    
    
}

- (IBAction)backgroundSeg:(id)sender {
    
    if (self.backgroundColour.selectedSegmentIndex == 0) {
        
        self.view.backgroundColor = [UIColor blackColor];
        
    } else if (self.backgroundColour.selectedSegmentIndex == 1) {
        
        self.view.backgroundColor = [UIColor whiteColor];
        
    } else if (self.backgroundColour.selectedSegmentIndex == 2) {
        
        self.view.backgroundColor = [UIColor blueColor];
        
    } else if (self.backgroundColour.selectedSegmentIndex == 3) {
        
        self.view.backgroundColor = [UIColor yellowColor];
        
    }
    
    
    
}

- (IBAction)settings:(id)sender {
    
    if (self.settingsView.hidden == NO) {
        
        self.settingsView.hidden = YES;
        self.settingsButton.alpha = 0.25;
        [self.settingsButton setTitle:@"Show Settings" forState:UIControlStateNormal];
        
        
        
    } else {
        
        self.settingsView.hidden = NO;
        self.settingsButton.alpha = 1.0;
        [self.settingsButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
        
    }
    
    
}







@end
