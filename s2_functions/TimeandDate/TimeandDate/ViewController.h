//
//  ViewController.h
//  TimeandDate
//
//  Created by Aaron on 16/06/2017.
//  Copyright © 2017 Aaron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    
    
}

@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;

@end

