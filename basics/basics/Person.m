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

//Swift:
//class Person {
// class function
//    func speakName(){
//        print("My name is Jack Davis")
//    }
// type/static function
//    class func stateSpecies() {
//        print("I am a human")
//    }
//}
//person.speakName()
//Person.stateSpecies()

- (void)speakName {
    NSLog(@"My name is Jack Davis");
}

+ (void)stateSpecies {
    NSLog(@"I am a human");
}

@end
