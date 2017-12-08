//
//  ShapeView.m
//  TechCodeApplication
//
//  Created by LeiLuRong on 16/6/9.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "ShapeView.h"
#import "CGContextObject.h"

@interface ShapeView ()

@property (nonatomic, strong)  CGContextObject  *contextObject;

@end

@implementation ShapeView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
    
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

//- (void)drawRect:(CGRect)rect {
//
//    if (self.points) {
//        
//        // Init CGContextObject.
//        CGContextObjectConfig *config = [CGContextObjectConfig new];
//        config.fillColor              = [RGBColor colorWithUIColor:self.fillColor ? self.fillColor : [UIColor whiteColor]];
//        /*
//        _contextObject = [[CGContextObject alloc] initWithCGContext:UIGraphicsGetCurrentContext() config:config];
//        
//        // Start draw.
//        [_contextObject contextConfig:config drawFillBlock:^(CGContextObject *contextObject) {
//            
//            [contextObject addLinePoints:self.points];
//        }];
//        */
//        
//        CGContextRef context = UIGraphicsGetCurrentContext();
//        CGContextSetRGBFillColor(context,
//                                 config.fillColor.red,
//                                 config.fillColor.green,
//                                 config.fillColor.blue,
//                                 config.fillColor.alpha);
//        CGContextBeginPath(context);
//        
//        [self.points enumerateObjectsUsingBlock:^(NSValue * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            CGPoint point = obj.CGPointValue;
//            if (idx == 0) {
//                CGContextMoveToPoint(context, point.x, point.y);
//            }else{
//                CGContextAddLineToPoint(context, point.x, point.y);
//            }
//        }];
//        CGContextFillPath(context);
//        
//    }
//}

@end
