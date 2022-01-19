//
//  ViewController.m
//  ImageGallery
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
    
    imageInt = 1;
    
    [self imageGallery];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)next:(id)sender {
    
    imageInt += 1;
    
    [self imageGallery];
    
}


- (IBAction)back:(id)sender {
    
    imageInt -= 1;
    
    [self imageGallery];
    
}


-(void)imageGallery {
    
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Image%i.jpg", imageInt]];
    self.label.text = [NSString stringWithFormat:@"%i/6", imageInt];
    
    
    if (imageInt == 1) {
        
        self.backButton.enabled = NO;
        self.backButton.alpha = 0.5;
        
    } else if (imageInt == 6) {
        
        self.nextButton.enabled = NO;
        self.nextButton.alpha = 0.5;
        
    } else {
        
        self.nextButton.enabled = YES;
        self.nextButton.alpha = 1.0;
        self.backButton.enabled = YES;
        self.backButton.alpha = 1.0;
        
    }
    
    
    
}









@end
