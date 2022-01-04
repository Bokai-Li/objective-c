//
//  ViewController.m
//  CatApp
//
//  Created by Bokai Li on 1/4/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.catButton.imageView.contentMode= UIViewContentModeScaleAspectFit;
    
    self.label.hidden = YES;
    
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) soundURL, &soundID);
    
}


- (IBAction)theCat:(id)sender {
    
    self.label.hidden = NO;
    
    AudioServicesPlaySystemSound(soundID);
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(catDelay) userInfo:nil repeats:NO];
    
}

-(void)catDelay {
    
    self.label.hidden = YES;
    
}
@end
