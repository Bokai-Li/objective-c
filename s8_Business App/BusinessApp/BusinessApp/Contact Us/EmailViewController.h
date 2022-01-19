//
//  EmailViewController.h
//  BusinessApp
//
//  Created by Aaron Caines on 30/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>

@interface EmailViewController : UIViewController <UITextViewDelegate, MFMailComposeViewControllerDelegate> {
    
    
    
    
}


@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextView *messageField;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)dismissKeyboard:(id)sender;

- (IBAction)email:(id)sender;


@end
