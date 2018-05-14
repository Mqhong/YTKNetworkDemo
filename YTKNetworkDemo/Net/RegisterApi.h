//
//  RegisterApi.h
//  YTKNetworkDemo
//
//  Created by 孟庆洪 on 2018/5/14.
//  Copyright © 2018年 mqhong. All rights reserved.
//

#import "YTKRequest.h"

@interface RegisterApi : YTKRequest
-(id)initWithUsername:(NSString *)username password:(NSString *)password;
@end
