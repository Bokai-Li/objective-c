//
//  Honda+SupedUp.h
//  basics
//
//  Created by Bokai Li on 11/15/21.
// This is a category, extension is also similar to category, extension can only be used on your own class, category can be used on other compiled source code

#import "Honda.h"

NS_ASSUME_NONNULL_BEGIN

@interface Honda (SupedUp)
-(void)addUglySpoler;
-(void)addGoldPlasticSpinnerRims;
-(void)scrapeOffHalfThePaint;
-(void)addHorribleSoundingMuffler;
@property(nonatomic,strong)NSNumber *wowFactor;
@end

NS_ASSUME_NONNULL_END
