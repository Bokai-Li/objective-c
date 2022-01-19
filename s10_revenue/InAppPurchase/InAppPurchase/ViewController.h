//
//  ViewController.h
//  InAppPurchase
//
//  Created by Aaron Caines on 02/07/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *level2button;
@property (weak, nonatomic) IBOutlet UIButton *unlockLevel2;

-(void)purchased;

@end

