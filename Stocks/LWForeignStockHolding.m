//
//  LWForeignStockHolding.m
//  Stocks
//
//  Created by Edwin Cardenas on 7/01/25.
//

#import "LWForeignStockHolding.h"

@implementation LWForeignStockHolding

- (float)costInDollars
{
    return [super costInDollars] * self.convertionRate;
}

- (float)valueInDollars
{
    return [super valueInDollars] * self.convertionRate;
}

@end
