//
//  YXPopView.h
//  YXPopView
//
//  Created by yx on 2016/12/30.
//  Copyright © 2016年 www.yixun.net. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,YXDirectionType) {
    
    YXTypeOfUpLeft,//上左
    YXTypeOfUpCenter,//上中
    YXTypeOfUpRight,//上右
    
    YXTypeOfDownLeft,   // 下左
    YXTypeOfDownCenter, // 下中
    YXTypeOfDownRight,  // 下右
    
    YXTypeOfLeftUp,     // 左上
    YXTypeOfLeftCenter, // 左中
    YXTypeOfLeftDown,   // 左下
    
    YXTypeOfRightUp,    // 右上
    YXTypeOfRightCenter,// 右中
    YXTypeOfRightDown,  // 右下
    
};

@interface YXPopView : UIView

@property (nonatomic,strong) UIView * _Nonnull backGoundView;

@property (nonatomic, assign) CGPoint point;

@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGFloat width;

@property (nonatomic,assign) YXDirectionType type;

- (instancetype _Nonnull)initWithOrigin:(CGPoint)point Width:(CGFloat)width Height:(CGFloat)height Type:(YXDirectionType)type color:(UIColor * _Nonnull)color;

- (void)showView;



@end
