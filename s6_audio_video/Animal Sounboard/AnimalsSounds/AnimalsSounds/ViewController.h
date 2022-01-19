//
//  ViewController.h
//  AnimalsSounds
//
//  Created by Aaron Caines on 27/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    
    SystemSoundID dogID;
    SystemSoundID catID;
    SystemSoundID sheepID;
    SystemSoundID frogID;
    SystemSoundID pigID;
    SystemSoundID horseID;
    
    
    
}



- (IBAction)dog:(id)sender;
- (IBAction)cat:(id)sender;
- (IBAction)sheep:(id)sender;
- (IBAction)frog:(id)sender;
- (IBAction)pig:(id)sender;
- (IBAction)horse:(id)sender;







@end

