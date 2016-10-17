//
//  main.m
//  TKNSDate
//
//  Created by Felix ITs 01 on 17/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        //// NSDate Declearation
        
        NSDate *current=[NSDate date];
        
        NSLog(@"%@",current);
        
        NSTimeInterval secondsInWeek = 5 * 24 * 60 * 60;
        NSDate *lastWeek = [NSDate dateWithTimeInterval:-secondsInWeek sinceDate:current];
        
        NSLog(@"Last week:%@",lastWeek);
        
        NSDate *nextWeek =[NSDate dateWithTimeInterval:secondsInWeek sinceDate:current];
        
        NSLog(@"Next Weak:%@",nextWeek);
        
        // Compareing dates
        
        NSComparisonResult result = [current compare:nextWeek];
        if (result == NSOrderedAscending) {
            NSLog(@"current < nextWeek");
        } else if (result == NSOrderedSame) {
            NSLog(@"current == nextWeek");
        } else if (result == NSOrderedDescending) {
            NSLog(@"current > nextWeek");
        }
        
        // Directly using methods
        NSDate *earlierDate = [current earlierDate:lastWeek];
        NSDate *laterDate = [current laterDate:lastWeek];
        NSLog(@"%@ is earlier than %@", earlierDate, laterDate);
        
        
    }
    return 0;
}
