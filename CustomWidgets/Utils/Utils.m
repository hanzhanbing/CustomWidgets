//
//  Utils.m
//  CustomWidgets
//
//  Created by hanzhanbing on 16/7/22.
//  Copyright © 2016年 asj. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+ (BOOL)isBlankString:(id)string
{
    string = [NSString stringWithFormat:@"%@",string];
    
    if (string == nil) {
        return YES;
    }
    
    if (string == NULL) {
        return YES;
    }
    if ([string isEqual:[NSNull null]]) {
        return YES;
    }
    if ([string isEqualToString:@"(null)"]) {
        return YES;
    }
    if([string isEqualToString:@"<null>"])
    {
        return YES;
    }
    if ([string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length==0) {
        return YES;
    }
    
    return NO;
}

@end
