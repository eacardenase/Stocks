//
//  LWStockHolding.h
//  Stocks
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LWStockHolding : NSObject

{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)p;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)p;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)s;

- (float)costInDollars;
- (float)valueInDollars;

@end

NS_ASSUME_NONNULL_END
