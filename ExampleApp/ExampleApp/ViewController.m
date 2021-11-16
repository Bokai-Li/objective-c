//
//  ViewController.m
//  ExampleApp
//
//  Created by Bokai Li on 11/15/21.
//

#import "ViewController.h"
#import "HTTPService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[HTTPService instance] getTutorials:^(NSArray * _Nullable dataArray, NSString * _Nullable errMessage) {
        if (dataArray) {
            NSLog(@"Dictionary %@", dataArray.debugDescription);
        } else if (errMessage){
            //Display alert to user
        }
    }];
}


@end
