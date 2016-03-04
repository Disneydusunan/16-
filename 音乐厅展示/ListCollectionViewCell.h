//
//  ListCollectionViewCell.h
//  音乐厅展示
//
//  Created by 谢谦 on 16/3/4.
//  Copyright © 2016年 杜苏南. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DSNMusicModel;
@interface ListCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@property (nonatomic,strong)DSNMusicModel *model;
//+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView;

@end
