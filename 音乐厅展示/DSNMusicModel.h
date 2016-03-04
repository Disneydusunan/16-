//
//  DSNMusicModel.h
//  音乐厅展示
//
//  Created by 谢谦 on 16/3/4.
//  Copyright © 2016年 杜苏南. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSNMusicModel : NSObject
@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *img;

-(instancetype)initWithDic:(NSDictionary *)dic;
+(instancetype)musicWithDic:(NSDictionary *)dic;

@end
