//
//  VideoCell.h
//  ExampleApp
//
//  Created by Bokai Li on 11/16/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class Video; //brings less than an import statement
@interface VideoCell : UITableViewCell
-(void)updateUI:(nonnull Video*)video;
@end

NS_ASSUME_NONNULL_END
