//
//  LWStockHolding.m
//  Stocks
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import "LWStockHolding.h"

@implementation LWStockHolding

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %@>", self.class, self.symbol];
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
