//
//  ViewController.h
//  UIPickerViews
//
//  Created by Aaron Caines on 23/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    NSArray *array;
    
}



@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;



@end

