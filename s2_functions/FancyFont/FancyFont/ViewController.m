//
//  ViewController.m
//  FancyFont
//
//  Created by Katou on 1/5/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    fontSize = 30;
    state = true;
}


- (IBAction)large:(id)sender {
    fontSize = 50;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)medium:(id)sender {
    fontSize = 30;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)small:(id)sender {
    fontSize = 15;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)shadow:(id)sender {
    if (state) {
        
        self.label.layer.shadowOpacity = 0;
        
        state = false;
        
        [self.shadowButton setTitle:@"Shadow" forState:UIControlStateNormal];
        
    } else {
        
        self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
        self.label.layer.shadowOpacity = 0.25;
        self.label.layer.shadowRadius = 1.0f;
        self.label.layer.shadowOffset = CGSizeMake(2, 2);
        
        state = true;
        
        [self.shadowButton setTitle:@"No Shadow" forState:UIControlStateNormal];
        
    }
}

- (IBAction)font4:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Avenir" size:fontSize]];
}

- (IBAction)font3:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Zapfino" size:fontSize]];
}

- (IBAction)font2:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Chalkduster" size:fontSize]];
}

- (IBAction)font1:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Arial" size:fontSize]];
}

- (IBAction)green:(id)sender {
    self.label.textColor = [UIColor colorWithRed:0.0/255.0 green:124.0/255.0 blue:29.0/255.0 alpha:1.0];
}

- (IBAction)blue:(id)sender {
    self.label.textColor = [UIColor blueColor];
}

- (IBAction)red:(id)sender {
    
    self.label.textColor = [UIColor redColor];
    
}

- (IBAction)enterText:(id)sender {
    self.label.text = self.textField.text;
}
@end
