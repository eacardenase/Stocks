//
//  LWStockHolding.m
//  Stocks
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import "LWStockHolding.h"

@implementation LWStockHolding

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)p
{
    _purchaseSharePrice = p;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)p
{
    _currentSharePrice = p;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)s
{
    _numberOfShares = s;
}

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
