//
//  YXPopView.m
//  YXPopView
//
//  Created by yx on 2016/12/30.
//  Copyright © 2016年 www.yixun.net. All rights reserved.
//

#import "YXPopView.h"
// MainScreen Height&Width
#define Main_Screen_Height      [[UIScreen mainScreen] bounds].size.height
#define Main_Screen_Width       [[UIScreen mainScreen] bounds].size.width
//色值
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)
#define Length 5
#define Length2 15

@implementation YXPopView

- (instancetype)initWithOrigin:(CGPoint)point Width:(CGFloat)width Height:(CGFloat)height Type:(YXDirectionType)type color:(UIColor *)color
{
    if (self = [super initWithFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height)]) {
        
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.1];
        
        //箭头的位置
        self.point = point;
        //视图的宽
        self.width = width;
        //视图的高
        self.height = height;
        //类型
        self.type = type;
        
        self.backGoundView = [[UIView alloc] initWithFrame:CGRectMake(point.x, point.y, width, height)];
        
        self.backGoundView.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.backGoundView];
    }
    return self;
}

- (void)showView
{
    UIWindow *windowView = [UIApplication sharedApplication].keyWindow;
    
    [windowView addSubview:self];
    
    switch (self.type) {
        case YXTypeOfUpLeft: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x, self.point.y + Length, 0, 0);
                CGFloat origin_x = self.point.x - Length2;
                CGFloat origin_y = self.point.y + Length;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfUpCenter: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x, self.point.y + Length, 0, 0);
                CGFloat origin_x = self.point.x - self.width / 2;
                CGFloat origin_y = self.point.y + Length;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfUpRight: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x, self.point.y + Length, 0, 0);
                CGFloat origin_x = self.point.x + Length2;
                CGFloat origin_y = self.point.y + Length;
                CGFloat size_width = -self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfDownLeft: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x, self.point.y - Length, 0, 0);
                CGFloat origin_x = self.point.x - Length2;
                CGFloat origin_y = self.point.y - Length;
                CGFloat size_width = self.width;
                CGFloat size_height = -self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfDownCenter: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x, self.point.y - Length, 0, 0);
                CGFloat origin_x = self.point.x - self.width / 2;
                CGFloat origin_y = self.point.y - Length;
                CGFloat size_width = self.width;
                CGFloat size_height = -self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfDownRight: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x, self.point.y - Length, 0, 0);
                CGFloat origin_x = self.point.x-self.width + Length2;
                CGFloat origin_y = self.point.y - Length;
                CGFloat size_width = self.width;
                CGFloat size_height = -self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
            
        case YXTypeOfLeftUp: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x + Length, self.point.y, 0, 0);
                CGFloat origin_x = self.point.x + Length;
                CGFloat origin_y = self.point.y - Length2;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfLeftCenter: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x + Length, self.point.y, 0, 0);
                CGFloat origin_x = self.point.x + Length;
                CGFloat origin_y = self.point.y - self.height / 2;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfLeftDown: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x + Length, self.point.y, 0, 0);
                CGFloat origin_x = self.point.x + Length;
                CGFloat origin_y = self.point.y - self.height + Length2;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfRightUp: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x - Length, self.point.y, 0, 0);
                CGFloat origin_x = self.point.x - Length;
                CGFloat origin_y = self.point.y - Length2;
                CGFloat size_width = -self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfRightCenter: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x - Length, self.point.y, 0, 0);
                CGFloat origin_x = self.point.x - Length;
                CGFloat origin_y = self.point.y - self.height / 2;
                CGFloat size_width = -self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case YXTypeOfRightDown: {
            {
                self.backGoundView.frame = CGRectMake(self.point.x - Length, self.point.y, 0, 0);
                CGFloat origin_x = self.point.x - Length;
                CGFloat origin_y = self.point.y - self.height + Length2;
                CGFloat size_width = -self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
    }

}

- (void)drawRect:(CGRect)rect
{
    
    // 开始画画
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    switch (self.type) {
        case YXTypeOfUpLeft:
        case YXTypeOfUpCenter:
        case YXTypeOfUpRight:{
            {
            CGFloat startX = self.point.x;
            CGFloat startY = self.point.y;
            CGContextMoveToPoint(context, startX, startY);//开始坐标
            CGContextAddLineToPoint(context, startX +Length, startY+Length);
            CGContextAddLineToPoint(context, startX -Length, startY+Length);
            }
            break;
        }
        case YXTypeOfDownLeft:
        case YXTypeOfDownCenter:
        case YXTypeOfDownRight:{
            {
                CGFloat startX = self.point.x;
                CGFloat startY = self.point.y;
                CGContextMoveToPoint(context, startX, startY);
                CGContextAddLineToPoint(context, startX - Length, startY - Length);
                CGContextAddLineToPoint(context, startX + Length, startY - Length);
            }
            break;
        }
        
        case YXTypeOfLeftUp:
        case YXTypeOfLeftCenter:
        case YXTypeOfLeftDown:{
            {
                CGFloat startX = self.point.x;
                CGFloat startY = self.point.y;
                CGContextMoveToPoint(context, startX, startY);
                CGContextAddLineToPoint(context, startX + Length, startY - Length);
                CGContextAddLineToPoint(context, startX + Length, startY + Length);
            }
            break;
        }
        
        case YXTypeOfRightUp:
        case YXTypeOfRightCenter:
        case YXTypeOfRightDown:{
            {
                CGFloat startX = self.point.x;
                CGFloat startY = self.point.y;
                CGContextMoveToPoint(context, startX, startY);
                CGContextAddLineToPoint(context, startX - Length, startY - Length);
                CGContextAddLineToPoint(context, startX - Length, startY + Length);
            }
            break;
        }
    }
    
    CGContextClosePath(context);
    [RGB(255,255,255) setFill];
    [RGB(255,255,255) setStroke];
    CGContextDrawPath(context, kCGPathFillStroke);
    
}
    
#pragma mark - backGoundViewFrame
- (void)startAnimateView_x:(CGFloat) x
                        _y:(CGFloat) y
              origin_width:(CGFloat) width
             origin_height:(CGFloat) height
{
    self.backGoundView.frame = CGRectMake(x, y, width, height);
}


#pragma mark - touch

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (![[touches anyObject].view isEqual:self.backGoundView]) {
     
        [self dismiss];
        
    }
}

#pragma mark - dismiss
- (void)dismiss
{
    NSArray *results = [self subviews];
    for (UIView *view in results) {
        [view removeFromSuperview];
    }
    self.alpha = 0;
    [self removeFromSuperview];
}


@end
