//
//  Person.m
//  strings
//
//  Created by Bokai Li on 10/27/21.
//

#import "Person.h"

@implementation Person
-(void)modifyBobState {
    //self.firstName=@"Bob"
    //[self setFirstName:@"Bob"]
    _firstName = @"Bob";
    isInsecure = YES;
}
@end
