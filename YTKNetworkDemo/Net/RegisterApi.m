//
//  RegisterApi.m
//  YTKNetworkDemo
//
//  Created by 孟庆洪 on 2018/5/14.
//  Copyright © 2018年 mqhong. All rights reserved.
//

#import "RegisterApi.h"

@implementation RegisterApi{
    NSString *_username;
    NSString *_password;
}

-(id)initWithUsername:(NSString *)username password:(NSString *)password;{
    self = [super init];
    if (self != nil) {
        _username = username;
        _password = password;
    }
    return self;
}

-(NSString *)requestUrl{
    return @"/iphone/register";
}

-(YTKRequestMethod)requestMethod{
    return YTKRequestMethodPOST;
}

-(id)requestArgument{
    return @{
             @"username":_username,
             @"password":_password
             };
}

@end
