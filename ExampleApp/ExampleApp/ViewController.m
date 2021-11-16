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
    [[HTTPService instance] getTutorials:^(NSDictionary * _Nullable dataDict, NSString * _Nullable errMessage) {
        if (dataDict) {
            NSLog(@"Dictionary %@", dataDict.debugDescription);
        } else if (errMessage){
            //Display alert to user
        }
    }];
}


@end
