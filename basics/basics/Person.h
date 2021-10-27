//
//  Person.h
//  strings
//
//  Created by Bokai Li on 10/27/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject {
// private variable, has no getter or setter
    BOOL isInsecure;
}
// public variable, automatically generated getter and setter
@property (nonatomic,strong) NSString *firstName;
@end

NS_ASSUME_NONNULL_END
