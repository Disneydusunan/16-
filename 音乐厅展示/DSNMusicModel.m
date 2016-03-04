//
//  DSNMusicModel.m
//  音乐厅展示
//
//  Created by 谢谦 on 16/3/4.
//  Copyright © 2016年 杜苏南. All rights reserved.
//

#import "DSNMusicModel.h"

@implementation DSNMusicModel
-(instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        self.img = dic[@"img"];
        self.name = dic[@"name"];
    
    }
    return self;

}
+(instancetype)musicWithDic:(NSDictionary *)dic
{

    return [[self alloc]initWithDic:dic];

}
@end
