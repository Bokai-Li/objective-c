//
//  Vehicle.h
//  basics
//
//  Created by Bokai Li on 11/4/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject
@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *engineSize;
-(void)drive;
@end

NS_ASSUME_NONNULL_END
