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
@property (nonatomic,strong) NSString *lastName;
// custom initilizer
-(id)initWithFirstName:(NSString*)first lastName:(NSString *)last;
-(void)printName;
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
// Note theses are public functions that can be called outside of this class
- (void)speakName;
+ (void)stateSpecies;
@end

NS_ASSUME_NONNULL_END
