//
//  main.m
//  Stocks
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import <Foundation/Foundation.h>
#import "LWPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LWStockHolding *stock1 = [[LWStockHolding alloc] init];
        LWStockHolding *stock2 = [[LWStockHolding alloc] init];
        LWForeignStockHolding *stock3 = [[LWForeignStockHolding alloc] init];
        
        stock1.purchaseSharePrice = 2.3;
        stock1.currentSharePrice = 4.5;
        stock1.numberOfShares = 40;
        stock1.symbol = @"XYZ";
        
        stock2.purchaseSharePrice = 12.19;
        stock2.currentSharePrice = 10.56;
        stock2.numberOfShares = 90;
        stock2.symbol = @"ABC";
        
        stock3.purchaseSharePrice = 45.10;
        stock3.currentSharePrice = 49.51;
        stock3.numberOfShares = 210;
        stock3.symbol = @"LMN";
        stock3.convertionRate = 0.94;
        
        LWPortfolio *portfolio = [[LWPortfolio alloc] init];
        portfolio.holdings = @[stock1, stock2, stock3];
        
        NSLog(@"The total value of the portfolio is %.2f", portfolio.totalValue);
        
        for (LWStockHolding *stock in portfolio.holdings) {
            NSLog(@"%@ stock value is %.2f", stock.symbol, stock.valueInDollars);
        }
    }
    return 0;
}
