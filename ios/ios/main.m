//  Created by Naohiro OHTA on 1/18/13.
//  Copyright (c) 2013 amaoto. All rights reserved.

#import <UIKit/UIKit.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSLog(@"Hello world!");

        NSDate* now = [[NSDate alloc]init];
        NSLog(@"%@",now);
        
        NSString* s;
        s = now.description;
        NSLog(@"%@",s);
        
        s = [now descriptionWithLocale:[NSLocale currentLocale]];
        NSLog(@"%@",s);

        NSTimeInterval i = [now timeIntervalSince1970];
        NSLog(@"%f",i);
        
        NSDateFormatter* f;
        f = [[NSDateFormatter alloc]init];
        [f setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
        s = [f stringFromDate:now];
        NSLog(@"%@",s);
        
        f = [[NSDateFormatter alloc]init];
        [f setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS Z"];
        s = [f stringFromDate:now];
        NSLog(@"%@",s);
        
        f = [[NSDateFormatter alloc]init];
        [f setDateFormat:@"yyyy-MM-dd Z"];
        NSDate* d = [f dateFromString:@"2013-01-18 +0000"];
        NSLog(@"%@",d);
        
    }
}
