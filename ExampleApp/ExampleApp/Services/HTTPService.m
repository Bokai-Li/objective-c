//
//  HTTPService.m
//  ExampleApp
//
//  Created by Bokai Li on 11/15/21.
//

#import "HTTPService.h"

#define URL_BASE "http://bokais-macbook-pro.local:6069"
#define URL_TUTORIALS "/tutorials"
#define URL_COMMENTS "/comments"

@implementation HTTPService

+(id) instance {
    static HTTPService *sharedInstance = nil;
    
    @synchronized (self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc]init];
    }
    
    return sharedInstance;
}

- (void) getTutorials:(nullable onComplete) completionHandler {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_TUTORIALS]];
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data != nil){
            NSError *err;
            NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err]; // saving err in *err for json parsing
            if (err == nil) {
                completionHandler(json, nil);
            } else {
                completionHandler(nil, @"Data is corrupt.");
            }
        } else {
            // err or nil from backend response
            NSLog(@"Network err: %@", error.debugDescription);
            completionHandler(nil, @"Problem with server response.");
        }
    }] resume];
}

-(void) postComment:(NSDictionary*)comment {
    NSError *error;
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_COMMENTS]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application.json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:@"Post"];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:comment options:0 error:&error];
    [request setHTTPBody:postData];
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        // handle error
    }];
    
    [postDataTask resume];
}

@end
