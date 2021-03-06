//
//  LoadUrlDataCell.m
//  Animations
//
//  Created by LeiLuRong on 16/2/3.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "LoadUrlDataCell.h"
#import "UIImageView+WebCache.h"
#import "PictureModel.h"
#import "UIView+AnimationProperty.h"
#import "DataModel.h"
#import "UIView+SetRect.h"
#import "UIFont+Fonts.h"
#import "NSString+LabelWidthAndHeight.h"

@interface LoadUrlDataCell ()

@property (nonatomic, strong) UIImageView  *iconImageView;
@property (nonatomic, strong) UILabel      *infoLabel;
@property (nonatomic, strong) UIView       *lineView;

@end

@implementation LoadUrlDataCell

- (void)setupCell {
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)buildSubview {
    
    self.iconImageView             = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    self.iconImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self addSubview:self.iconImageView];
    
    self.infoLabel               = [[UILabel alloc] initWithFrame:CGRectMake(70, 10, Width - 80, 20)];
    self.infoLabel.numberOfLines = 0;
    self.infoLabel.font          = [UIFont HeitiSCWithFontSize:14.f];
    [self addSubview:self.infoLabel];
    
    self.lineView                 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, Width, 0.5f)];
    self.lineView.backgroundColor = [UIColor grayColor];
    self.lineView.alpha           = 0.1f;
    [self addSubview:self.lineView];
}

- (void)loadContent {
    
    DataModel *model = self.dataAdapter.data;
    
    self.infoLabel.text  = model.user.infomation.text;
    self.infoLabel.width = Width - 80;
    [self.infoLabel sizeToFit];
    
    self.lineView.y = self.dataAdapter.cellHeight - 0.5f;
    
    __weak LoadUrlDataCell *wself = self;
    [wself.iconImageView sd_setImageWithURL:[NSURL URLWithString:model.user.avatar_image.url]
                                  completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
                                      
                                      if (cacheType == SDImageCacheTypeNone) {
                                          
                                          NSLog(@"[%ld][%ld] SDImageCacheTypeNone", (long)wself.indexPath.section, (long)wself.indexPath.row);
                                          
                                      } else if (cacheType == SDImageCacheTypeDisk) {
                                          
                                          NSLog(@"[%ld][%ld] SDImageCacheTypeDisk", (long)wself.indexPath.section, (long)wself.indexPath.row);
                                          
                                      } else if (cacheType == SDImageCacheTypeMemory) {
                                          
                                          NSLog(@"[%ld][%ld] SDImageCacheTypeMemory", (long)wself.indexPath.section, (long)wself.indexPath.row);
                                          
                                      } else {
                                          
                                          NSLog(@"[%ld][%ld] Unknow", (long)wself.indexPath.section, (long)wself.indexPath.row);
                                      }
                                      
                                      wself.iconImageView.image = image;
                                      wself.iconImageView.alpha = 0;
                                      wself.iconImageView.scale = 1.25f;
                                      
                                      [UIView animateWithDuration:0.5f animations:^{
                                          
                                          wself.iconImageView.alpha = 1.f;
                                          wself.iconImageView.scale = 1.f;
                                      }];
                                  }];
}

- (void)cancelAnimation {
    
    [self.iconImageView.layer removeAllAnimations];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {

    [super setHighlighted:highlighted animated:animated];

    UIColor *color = [[UIColor colorWithRed:arc4random() % 256 / 255.f
                                      green:arc4random() % 256 / 255.f
                                       blue:arc4random() % 256 / 255.f
                                      alpha:1.f] colorWithAlphaComponent:0.30];
    
    [UIView animateWithDuration:0.25f delay:0.f options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        
        self.backgroundColor = highlighted ? color : [UIColor whiteColor];
        
    } completion:nil];
}

+ (CGFloat)cellHeightWithData:(id)data {

    DataModel *model      = data;
    CGFloat    height     = [model.user.infomation.text heightWithStringFont:[UIFont HeitiSCWithFontSize:14.f] fixedWidth:Width - 80];
    CGFloat    cellHeight = height <= 50 ? 10 + 50 + 10 : 10 + height + 10;
    
    return cellHeight;
}

@end
