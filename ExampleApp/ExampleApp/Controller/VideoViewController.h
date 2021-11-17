//
//  VideoViewController.h
//  ExampleApp
//
//  Created by Bokai Li on 11/16/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class Video;
@interface VideoViewController : UIViewController <UIWebViewDelegate>
@property (nonatomic,strong) Video *video;
@end

NS_ASSUME_NONNULL_END
