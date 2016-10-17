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
        
        // NSDate Components
        NSDateComponents *november10th2016 = [[NSDateComponents alloc] init];
        [november10th2016 setYear:2016];
        [november10th2016 setMonth:11];
        [november10th2016 setDay:10];
        NSLog(@"%@", november10th2016);
    
        
        // We can set following components too.
//        era   	week
//        year      weekday
//        month 	weekdayOrdinal
//        day       quarter
//        hour      weekOfMonth
//        minute 	weekOfYear
//        second 	yearForWeekOfYear
//
    
    
    }
    return 0;
}
