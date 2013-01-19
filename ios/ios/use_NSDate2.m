int use_NSDate2()
{
    NSLog(@"use_NSDate2()");

    NSDate* now = [[NSDate alloc]init];
    NSDateFormatter* fmtOnlyDate = [[NSDateFormatter alloc]init];
    NSDateFormatter* fmtDateTime = [[NSDateFormatter alloc]init];
    [fmtOnlyDate setDateFormat:@"yyyy-MM-dd Z"];
    [fmtDateTime setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    NSTimeInterval secondsPerDay = 24 * 60 * 60;
    
    NSString* today_start_str = [fmtOnlyDate stringFromDate:now];
    NSLog(@"1. %@", today_start_str);
    
    NSDate* today_start_time = [fmtOnlyDate dateFromString:today_start_str];
    NSLog(@"2. %@", today_start_time);

    NSTimeInterval today_start_point = [today_start_time timeIntervalSince1970];
    NSLog(@"3. %f", today_start_point);
    NSDate* tomorrow = [today_start_time dateByAddingTimeInterval:secondsPerDay];
    NSLog(@"4. %@", tomorrow);
    NSTimeInterval tomorrow_start_point = today_start_point + secondsPerDay;
    NSLog(@"5. %f", secondsPerDay);
    NSLog(@"6. %f", tomorrow_start_point);
    
    return 0;
}
