//
//  ViewController.m
//  TemperatureCalculator
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


- (IBAction)calculate:(id)sender {
    
    if (self.segControl.selectedSegmentIndex == 0) {
        
        double fahrenheit = [self.textField.text doubleValue];
        double celsius = (fahrenheit - 32) / 1.8;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%3.2f Celsius", celsius];
        
        if (celsius > 120) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp9.png"];
            
        } else if (celsius > 100) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp8.png"];
            
        } else if (celsius > 80) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp7.png"];
            
        } else if (celsius > 60) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp6.png"];
            
        } else if (celsius > 40) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp5.png"];
            
        } else if (celsius > 20) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp4.png"];
            
        } else if (celsius > 0) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp3.png"];
            
        } else if (celsius > -20) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp2.png"];
            
        } else if (celsius < -20) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
            
        }
        
        
        
    } else {
        
        double celsius = [self.textField.text doubleValue];
        double fahrenheit = celsius * 1.8 + 32;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%3.2f Fahrenheit", fahrenheit];
        
        if (fahrenheit > 180) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp9.png"];
            
        } else if (fahrenheit > 160) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp8.png"];
            
        } else if (fahrenheit > 120) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp7.png"];
            
        } else if (fahrenheit > 100) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp6.png"];
            
        } else if (fahrenheit > 80) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp5.png"];
            
        } else if (fahrenheit > 60) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp4.png"];
            
        } else if (fahrenheit > 40) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp3.png"];
            
        } else if (fahrenheit > 20) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp2.png"];
            
        } else if (fahrenheit < 20) {
            
            self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
            
        }
        
    }
    
    
    
    
}

- (IBAction)switchCoversion:(id)sender {
    
    if (self.segControl.selectedSegmentIndex == 0) {
        
        self.enterLabel.text = @"Enter Fahrenheit";
        self.textField.text = @"";
        self.outputLabel.text = @"0 Celsius";
        
    } else {
        
        self.enterLabel.text = @"Enter Celsius";
        self.textField.text = @"";
        self.outputLabel.text = @"0 Fahrenheit";
        
    }
    
    
    
}





@end
