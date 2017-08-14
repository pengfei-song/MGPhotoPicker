//
//  LGPickerGroupTableViewCell.m
//  LGPhotoBrowser
//
//  Created by ligang on 15/10/27.
//  Copyright (c) 2015年 L&G. All rights reserved.

#import "LGPhotoPickerGroupTableViewCell.h"
#import "LGPhotoPickerGroup.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface LGPhotoPickerGroupTableViewCell ()
@property (weak, nonatomic) UIImageView *groupImageView;
@property (weak, nonatomic) UILabel *groupNameLabel;
@property (weak, nonatomic) UILabel *groupPicCountLabel;
@end

@implementation LGPhotoPickerGroupTableViewCell

- (UIImageView *)groupImageView{
    if (!_groupImageView) {
        UIImageView *groupImageView = [[UIImageView alloc] init];
        groupImageView.frame = CGRectMake(15, 5, 70, 70);
        groupImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.contentView addSubview:_groupImageView = groupImageView];
    }
    return _groupImageView;
}

- (UILabel *)groupNameLabel{
    if (!_groupNameLabel) {
        UILabel *groupNameLabel = [[UILabel alloc] init];
        groupNameLabel.frame = CGRectMake(95, 15, self.frame.size.width - 100, 20);
        [self.contentView addSubview:_groupNameLabel = groupNameLabel];
    }
    return _groupNameLabel;
}

- (UILabel *)groupPicCountLabel{
    if (!_groupPicCountLabel) {
        UILabel *groupPicCountLabel = [[UILabel alloc] init];
        groupPicCountLabel.font = [UIFont systemFontOfSize:14];
        groupPicCountLabel.textColor = [UIColor lightGrayColor];
        groupPicCountLabel.frame = CGRectMake(95, 40, self.frame.size.width - 100, 20);
        [self.contentView addSubview:_groupPicCountLabel = groupPicCountLabel];
    }
    return _groupPicCountLabel;
}

- (void)setGroup:(LGPhotoPickerGroup *)group{
    _group = group;
    
    self.groupNameLabel.text = group.groupName;
    self.groupImageView.image = group.thumbImage;
    self.groupPicCountLabel.text = [NSString stringWithFormat:@"(%ld)",(long)group.assetsCount];
}

@end
