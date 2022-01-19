//
//  StoreViewController.h
//  InAppPurchase
//
//  Created by Aaron Caines on 02/07/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>

@interface StoreViewController : UIViewController <SKPaymentTransactionObserver, SKProductsRequestDelegate> {
    
    
    
}

@property(strong, nonatomic) SKProduct *product;
@property(strong, nonatomic) NSString *productID;


@property (weak, nonatomic) IBOutlet UILabel *productTitle;
@property (weak, nonatomic) IBOutlet UITextView *productDescription;
@property (weak, nonatomic) IBOutlet UIButton *purchaseButton;

- (IBAction)purchase:(id)sender;
- (IBAction)restore:(id)sender;



@end
