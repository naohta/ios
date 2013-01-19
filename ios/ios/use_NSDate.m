int use_NSDate()
{
    NSLog(@"use_NSDate()");
    
    NSDate* now = [[NSDate alloc]init];
    NSLog(@"1. %@",now);
    
    NSString* s;
    s = now.description;
    NSLog(@"2. %@",s);
    
    s = [now descriptionWithLocale:[NSLocale currentLocale]];
    NSLog(@"3. %@",s);
    
    NSTimeInterval i = [now timeIntervalSince1970];
    NSLog(@"4. %f",i);
    
    NSDateFormatter* f = [[NSDateFormatter alloc]init];
    [f setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    s = [f stringFromDate:now];
    NSLog(@"5. %@",s);
    
    [f setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS Z"];
    s = [f stringFromDate:now];
    NSLog(@"6. %@",s);
    
    [f setDateFormat:@"yyyy-MM-dd Z"];
    NSDate* d = [f dateFromString:@"2013-01-18 +0000"];
    NSLog(@"7. %@",d);
    
    [f setDateFormat:@"yyyy-MM-dd Z"];
    NSString* today_just_0_hour = [f stringFromDate:[[NSDate alloc]init]];
    NSLog(@"8. %@",today_just_0_hour);
    d = [f dateFromString:@"2013-01-18 +0000"];
    NSLog(@"9. %@",d);
    
    return 0;
}
