//
//  LineBackgroundView.h
//  LineBackgroundView
//
//  Created by XianMingYou on 15/3/4.
//
//  https://github.com/Fendouzhe
//  http://www.jianshu.com/u/a5b423cb2c25
//

#import <UIKit/UIKit.h>

@interface LineBackgroundView : UIView

@property (nonatomic) CGFloat            lineWidth;
@property (nonatomic) CGFloat            lineGap;
@property (nonatomic, strong) UIColor   *lineColor;

- (void)buildView;
+ (instancetype)createViewWithFrame:(CGRect)frame lineWidth:(CGFloat)width lineGap:(CGFloat)lineGap lineColor:(UIColor *)color;

@end
