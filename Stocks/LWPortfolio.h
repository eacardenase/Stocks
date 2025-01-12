//
//  LWPortfolio.h
//  Stocks
//
//  Created by Edwin Cardenas on 11/01/25.
//

#import <Foundation/Foundation.h>
#import "LWForeignStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface LWPortfolio : NSObject
{
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;

- (void)addHolding:(LWStockHolding *)h;
- (float)totalValue;

@end

NS_ASSUME_NONNULL_END
