//
//  HTTPService.m
//  ExampleApp
//
//  Created by Bokai Li on 11/15/21.
//

#import "HTTPService.h"

@implementation HTTPService

+(id) instance {
    static HTTPService *sharedInstance = nil;
    
    @synchronized (self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc]init];
    }
    
    return sharedInstance;
}

@end
