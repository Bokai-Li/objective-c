//
//  ViewController.h
//  DisplayingImages
//
//  Created by Aaron Caines on 26/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;


- (IBAction)showMeTheImage:(id)sender;



@end

