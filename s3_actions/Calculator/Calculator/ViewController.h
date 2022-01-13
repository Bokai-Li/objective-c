//
//  ViewController.h
//  Calculator
//
//  Created by Aaron Caines on 23/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    int currentOperation;
    
    float result;
    float currentNumber;
    
}

@property (weak, nonatomic) IBOutlet UILabel *label;


- (IBAction)digitPressed:(id)sender;
- (IBAction)cancelOperation:(id)sender;
- (IBAction)operationPressed:(id)sender;





@end

