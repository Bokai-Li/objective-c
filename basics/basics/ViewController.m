//
//  ViewController.m
//  basics
//
//  Created by Bokai Li on 10/27/21.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Strings
    NSString *var1 = @"Junk";
    NSString *var2 = @"junk";
    if(![var1 isEqualToString:var2]){
        NSLog(@"var1 is not equal to ar2, this is true");
    }
    if([var1.lowercaseString isEqualToString:var2]){
        NSLog(@"var1.lowercaseString is equal to var2, this is true");
    }
    if([var1 caseInsensitiveCompare:var2] == NSOrderedSame){
        NSLog(@"this is a weird way to compare string");
    }
    
    //Properties and instance variables
    Person *person1 = [[Person alloc]init];
    
    person1.firstName = @"fn";
    NSLog(@"%@",person1.firstName);
}


@end
