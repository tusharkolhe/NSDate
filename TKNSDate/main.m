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
        
        NSDate *current=[NSDate date];
        
        NSLog(@"%@",current);
        
        NSTimeInterval secondsInWeek = 5 * 24 * 60 * 60;
        NSDate *lastWeek = [NSDate dateWithTimeInterval:-secondsInWeek sinceDate:current];
        
        NSLog(@"Last week:%@",lastWeek);
        
        NSDate *nextWeek =[NSDate dateWithTimeInterval:secondsInWeek sinceDate:current];
        
        NSLog(@"Next Weak:%@",nextWeek);
        
//        te *lastWeek=[NSDate dateWithTimeInterval:secondInWeek sinceDate:current];
    }
    return 0;
}
