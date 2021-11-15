//
//  ViewController.m
//  basics
//
//  Created by Bokai Li on 10/27/21.
//

#import "ViewController.h"
#import "Person.h"
#import "Civic.h"
#import "Honda+SupedUp.h"

@interface ViewController ()
// just like var declaration in Swift
// var bankAcount = 500.50
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // for var
    self.bankAccount = 500.50;
    self.itemAmount = 400.00;
    // String objects
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
    
    // Number objects
    NSNumber *intVal = [NSNumber numberWithInt:5];
    NSNumber *intVal2 = [NSNumber numberWithInt:6];
    
    NSArray *arr = @[intVal, intVal2];
    NSLog(@"%@", arr);
    
    NSNumber *sum = [NSNumber numberWithInt: intVal.intValue + intVal2.intValue];
    NSLog(@"Sum: %@", sum);
    
    NSInteger someInt = 55;
    NSLog(@"%ld", (long)someInt);
    
    // Boolean, if else
    BOOL bool1 = YES; // objective c NeXTSTEP bool we want to use this
    // bool bool2; plain C
    // Boolean bool3; older mac toolbox
    // boolean_t bool4;
    if (bool1) {
        NSLog(@"bool1 is true/YES");
    } else {
        NSLog(@"bool1 is false/NO");
    }
    
    NSString *name = nil;
    if (name) {
        NSLog(@"Name: %@", name);
    }
    
    if (!name) {
        name = @"Sandra";
    }
    
    // playground
    [self playground];
    // self.playground()
}

// functions
//Swift:
//func canPurchase(amount: Double) -> Bool {
//    if bankAccount >= amount {
//        return true
//    }
//    return false
//}

- (BOOL) canPurchaseWithAmount:(double)amount{
    if (self.bankAccount >= amount)
        return YES;
    return NO;
}
// same as
- (BOOL) canPurchase:(double)amount {
    if (self.bankAccount >= amount)
        return YES;
    return NO;
}

//Swift:
//func declareWinner(playerAscore: Int, playerBScore: Int){
//    if playerAScore > playerBScore{
//        print("")
//    } else if playerBScore > playerAScore {
//        prin("")
//    } else {
//        print()
//    }
//}

- (void) declareWinnerWithPlayerAScore: (NSInteger)playerAScore WithPlayerBScore:(NSInteger)playerBScore {
    if(playerAScore > playerBScore) {
        NSLog(@"Player A Wins!");
    } else if (playerBScore > playerAScore) {
        NSLog(@"Player B Wins!");
    } else {
        NSLog(@"The game is at a stanstil!");
    }
}

- (void)playground {
    // Swift:
    // canPurchase(itemAmount)
    if ([self canPurchase:self.itemAmount]){
        NSLog(@"We can buy");
    }
    if ([self canPurchaseWithAmount:self.itemAmount]){
        NSLog(@"We can buy 2");
    }
    
    [self declareWinnerWithPlayerAScore:55 WithPlayerBScore:66];
    
    // Person static and class function calls
    Person *person = [[Person alloc]init];
    [person speakName];
    // Static function call
    [Person stateSpecies];
    
    // nested function calls
    // This is more prefered
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL: [NSURL URLWithString:@"http://google.com/"]]];
    
    // This is longer
    NSString *urlString = @"http://google/com/";
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image2 = [UIImage imageWithData:data];
    
    // note bracket can be property or function call, but dot notation can only be property
    // i.e.
    NSNumber *number = [NSNumber numberWithInt:55];
    NSLog(@"Number: %@", number.stringValue); // accessing a property
    
    // NSArray is not mutable. Need to set values during initilization
    NSArray *arr = [NSArray arrayWithObjects:@"first",@"and",@"second", @"object", nil];
    NSArray *arr2 = @[@"another", @"NS", @"Array",@"literal", @"declaration"];
    NSArray *arr3 = [NSArray arrayWithArray:arr];
    
    // NSMutableArray is mutable.
    NSMutableArray *mutArr = [[NSMutableArray alloc]init];
    NSMutableArray *mutArr2 = mutArr; // shallow copy
    NSMutableArray *mutArr3 = [NSMutableArray arrayWithArray:mutArr]; // deep copy
    [mutArr addObject:@"hello"];
    [mutArr addObject:@"world"];
    NSLog(@"mutArr: %@", mutArr.debugDescription); //hello world
    [mutArr removeObjectAtIndex:1];
    NSLog(@"mutArr: %@", mutArr.debugDescription); //hello
    NSLog(@"mutArr2: %@", mutArr2.debugDescription); //hello
    NSLog(@"mutArr3: %@", mutArr3.debugDescription); //empty
    
    // NSDictionary not mutable
    NSNumber *age = [NSNumber numberWithInt:30];
    NSNumber *age2 = [NSNumber numberWithInt:40];
    NSDictionary *dict = @{@"John":age,@"Jack":age2}; // can mix data type but not recommended
    int jackAge = [[dict objectForKey:@"Jack"] intValue];
    NSLog(@"Jack age: %d", jackAge);
    
    // NSMutableDictionary
    NSMutableDictionary *mutDict2 = [@{@"John":age,@"Jack":age2} mutableCopy];
    NSMutableDictionary *mutDict3 = [NSMutableDictionary dictionaryWithDictionary:dict];
    NSMutableDictionary *mutDict = [[NSMutableDictionary alloc]init];
    [mutDict setObject:@"an object" forKey:@"a key"];
    
    // for loops
    for (int x = 0; x < arr2.count; x++) {
        NSString *item = [arr2 objectAtIndex:x];
        NSLog(@"%@", item);
    }
    // fast enumeration (for each)
    for (NSString *item in arr3) {
        NSLog(@"%@", item);
    }
    // drive from subclass, I am driving
    Civic *civic = [[Civic alloc]init];
    
    Person *person1 = [Person new]; //same as [[Person alloc]init];
    Person *person2 = [[Person alloc] initWithFirstName:@"John" lastName:@"Doe"]; //custom designated initializer
    [person1 printName];
    [person2 printName];
    
    // category (extension to class) Honda+SupedUP.h
    Honda *honda = [[Honda alloc]init];
    [honda addUglySpoler];
    [honda addGoldPlasticSpinnerRims];
    
    
    //Swift and Objective-C Interoperability
    
}
- (IBAction)loadSecondVC:(id)sender {
}



@end
