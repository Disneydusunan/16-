//
//  ViewController.m
//  音乐厅展示
//
//  Created by 谢谦 on 16/3/3.
//  Copyright © 2016年 杜苏南. All rights reserved.
//

#import "ViewController.h"
#import "ListCollectionViewCell.h"
#import "DSNMusicModel.h"


@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong)NSArray *musics;

@end


static NSString *identifier = @"cell";
@implementation ViewController
-(NSArray *)musics
{
    if (!_musics) {
        _musics = [NSArray array];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"音乐厅.plist" ofType:nil];
        NSArray *arr = [NSArray arrayWithContentsOfFile:path];
        NSLog(@"%@",arr);
        NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:arr.count];
        for (NSDictionary *dic in arr) {
            DSNMusicModel *model = [DSNMusicModel musicWithDic:dic];
            
            [arrM addObject:model];
        }
        _musics = [arrM copy];
    }
    return _musics;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[ListCollectionViewCell class] forCellWithReuseIdentifier:identifier];
//    [self.collectionView registerNib:[UINib nibWithNibName:@"main" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:identifier];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{

    return 1;

}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{

    return self.musics.count;
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{


    return CGSizeMake(120, 100);

}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{

    return UIEdgeInsetsMake(10, 10, 10, 10);
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ListCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[ListCollectionViewCell alloc]init];
    }
    
    DSNMusicModel *model = self.musics[indexPath.row];
    
    cell.imgView.image = [UIImage imageNamed:@"1.png"];
    cell.nameLabel.text = model.name;

//
//
//    NSString *str = [self.musics[indexPath.row] objectForKey:@"img"];
//    cell.imgView.image = [UIImage imageNamed:str];
//    cell.nameLabel.text = self.musics[indexPath.row]
    
    
//    int index = 1 + arc4random() % 16;
//
//    for (int i = 0; i < 100; i++) {
//        UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"%d",index]];
//        UIImageView *imgView = [[UIImageView alloc]initWithImage:img];
//        
//        [cell setBackgroundView:imgView];
//    }
    return cell;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
