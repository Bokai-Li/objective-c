//
//  Civic.m
//  basics
//
//  Created by Bokai Li on 11/4/21.
//

#import "Civic.h"

@implementation Civic

-(id)init{
    if (self = [super init]){
        
    }
    [self drive];
    return self;
}

-(void)test{
    self.make = @"Honda";
    self.model = @"Civic";
}
// overwrite
-(void)drive{
    NSLog(@"Drive from subclass");
    [super drive];
}
@end
