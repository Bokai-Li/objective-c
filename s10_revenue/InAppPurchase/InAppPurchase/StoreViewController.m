//
//  StoreViewController.m
//  InAppPurchase
//
//  Created by Aaron Caines on 02/07/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "StoreViewController.h"
#import "ViewController.h"

@interface StoreViewController ()

@property(strong, nonatomic) ViewController *homeVC;

@end

@implementation StoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.productID = @"com.geekylemondevelopment.IAPLectureApplication.level2unlock";
    self.purchaseButton.enabled = NO;
    self.purchaseButton.alpha = 0.5;
    
    [self getPurchaseID];
    
}

-(void)getPurchaseID {
    
    if ([SKPaymentQueue canMakePayments]) {
        
        SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:[NSSet setWithObject:self.productID]];
        request.delegate = self;
        [request start];
        
    } else {
        
        self.productDescription.text = @"Please enable IAP in your settings";
        
    }
    
    
}

-(void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    
    NSArray *products = response.products;
    if (products.count != 0) {
        
        self.product = products[0];
        self.purchaseButton.enabled = YES;
        self.purchaseButton.alpha = 1.0;
        
        self.productTitle.text = self.product.localizedTitle;
        self.productDescription.text = self.product.localizedDescription;
        
    } else {
        
        self.productDescription.text = @"Product not found";
        
    }
    
    products = response.invalidProductIdentifiers;
    for (SKProduct *product in products) {
        NSLog(@"%@", product);
    }
    
}

-(void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions {
    
    for (SKPaymentTransaction *transaction in transactions) {
        
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchased:
                
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                self.productDescription.text = @"The product was purchased";
                
                [self.homeVC purchased];
                [self.purchaseButton setTitle:@"Purchased" forState:UIControlStateNormal];
                self.purchaseButton.enabled = NO;
                self.purchaseButton.alpha = 0.5;
                
                break;
                
            case SKPaymentTransactionStateFailed:
                
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                self.productDescription.text = @"The product was not purchased";
                
                break;
                
            default:
                break;
        }
        
        
        
    }
    
}


- (IBAction)purchase:(id)sender {
    
    SKPayment *payment = [SKPayment paymentWithProduct:self.product];
    [[SKPaymentQueue defaultQueue] addPayment:payment];
    
}

- (IBAction)restore:(id)sender {
    
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
    
}





@end
