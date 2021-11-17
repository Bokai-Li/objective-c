//
//  HTTPService.h
//  ExampleApp
//
//  Created by Bokai Li on 11/15/21.
//
// Singleton

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// type definition, a block (anonymous function object)
// typedef output_type (^block_name) (input, input2, ...)
typedef void (^onComplete) (NSArray *__nullable dataArray, NSString * __nullable errMessage);

@interface HTTPService : NSObject

+ (id) instance;
- (void) getTutorials:(nullable onComplete)completionHandler;
-(void) postComment:(NSDictionary*)comment;

@end

NS_ASSUME_NONNULL_END
