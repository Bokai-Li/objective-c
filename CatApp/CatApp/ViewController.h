//
//  ViewController.h
//  CatApp
//
//  Created by Bokai Li on 1/4/22.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController{
    
    SystemSoundID soundID;
    
}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *catButton;
- (IBAction)theCat:(id)sender;

@end

