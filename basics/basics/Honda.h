//
//  Honda.h
//  basics
//
//  Created by Bokai Li on 11/15/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Honda : NSObject
@property(nonatomic,strong) NSString *model;
@property(nonatomic,strong) NSNumber *miles;
-(void)increaseMilesToOdometer;
-(void)drive;
@end

NS_ASSUME_NONNULL_END
