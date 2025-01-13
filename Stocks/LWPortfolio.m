//
//  LWPortfolio.m
//  Stocks
//
//  Created by Edwin Cardenas on 11/01/25.
//

#import "LWPortfolio.h"
#import "LWStockHolding.h"

@interface LWPortfolio ()
{
    NSMutableArray *_holdings;
}

@end

@implementation LWPortfolio

- (void)setHoldings:(NSArray *)holdings
{
    _holdings = [holdings copy];
}

- (NSArray *)holdings
{
    return [_holdings copy];
}

- (void)addHolding:(LWStockHolding *)h
{
    if (!_holdings) {
        _holdings = [NSMutableArray array];
    }

    [_holdings addObject:h];
}

- (void)removeHolding:(LWStockHolding *)h
{
    if ([_holdings containsObject:h]) {
        [_holdings removeObject:h];
    }
}

- (float)totalValue
{
    float sum = 0.0;
    
    for (LWStockHolding *h in _holdings) {
        sum += h.valueInDollars;
    }
    
    return sum;
}

@end
