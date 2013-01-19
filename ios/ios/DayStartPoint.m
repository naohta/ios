float dayStartPoint(NSDate* theDay)
{
    NSLog(@"daysStartPoint()");
    if(theDay==nil){
        theDay = [[NSDate alloc]init];
    }
    
    NSDateFormatter* fmtOnlyDate = [[NSDateFormatter alloc]init];
    NSDateFormatter* fmtDateTime = [[NSDateFormatter alloc]init];
    [fmtOnlyDate setDateFormat:@"yyyy-MM-dd Z"];
    [fmtDateTime setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    
    NSString* day_start_str = [fmtOnlyDate stringFromDate:theDay];
    NSDate* day_start_time = [fmtOnlyDate dateFromString:day_start_str];
    NSTimeInterval day_start_point = [day_start_time timeIntervalSince1970];
    NSLog(@"%f",day_start_point);
    return(day_start_point);
}
