//
//  ListCollectionViewCell.m
//  音乐厅展示
//
//  Created by 谢谦 on 16/3/4.
//  Copyright © 2016年 杜苏南. All rights reserved.
//

#import "ListCollectionViewCell.h"
#import "DSNMusicModel.h"

@implementation ListCollectionViewCell

-(void)setModel:(DSNMusicModel *)model
{

    self.imgView.image = [UIImage imageNamed:model.img];
    self.nameLabel.text = model.name;

}

@end
