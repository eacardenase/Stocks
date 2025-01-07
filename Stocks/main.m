//
//  main.m
//  Stocks
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import <Foundation/Foundation.h>
#import "LWStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LWStockHolding *stock1 = [[LWStockHolding alloc] init];
        LWStockHolding *stock2 = [[LWStockHolding alloc] init];
        LWStockHolding *stock3 = [[LWStockHolding alloc] init];
        
        stock1.purchaseSharePrice = 2.3;
        stock1.currentSharePrice = 4.5;
        stock1.numberOfShares = 40;
        
        stock2.purchaseSharePrice = 12.19;
        stock2.currentSharePrice = 10.56;
        stock2.numberOfShares = 90;
        
        stock3.purchaseSharePrice = 45.10;
        stock3.currentSharePrice = 49.51;
        stock3.numberOfShares = 210;
        
        NSArray *stocks = @[stock1, stock2, stock3];
        
        for (LWStockHolding *stock in stocks) {
            NSLog(@"This stock's value is %.2f", [stock valueInDollars]);
        }
    }
    return 0;
}
