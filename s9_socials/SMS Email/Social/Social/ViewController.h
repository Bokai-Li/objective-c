//
//  ViewController.h
//  Social
//
//  Created by Aaron Caines on 30/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <MFMessageComposeViewControllerDelegate, MFMailComposeViewControllerDelegate> {
    
    
    
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;


- (IBAction)shareSMS:(id)sender;
- (IBAction)shareEmail:(id)sender;


@end

