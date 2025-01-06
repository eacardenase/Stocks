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
        
        [stock1 setPurchaseSharePrice:2.3];
        [stock1 setCurrentSharePrice:4.5];
        [stock1 setNumberOfShares:40];
        
        [stock2 setPurchaseSharePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
        
        NSArray *stocks = @[stock1, stock2, stock3];
        
        for (LWStockHolding *stock in stocks) {
            NSLog(@"This stock's value is %.2f", [stock valueInDollars]);
        }
    }
    return 0;
}
