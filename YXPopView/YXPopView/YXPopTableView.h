//
//  YXPopTableView.h
//  YXPopView
//
//  Created by yx on 2016/12/30.
//  Copyright © 2016年 www.yixun.net. All rights reserved.
//

#import "YXPopView.h"

typedef void(^SelectIndexBlock)(NSInteger index);

@interface YXPopTableView : YXPopView<UITableViewDelegate,UITableViewDataSource>
// titles
@property (nonatomic, strong) NSArray           * _Nonnull dataArray;
// images
@property (nonatomic, strong) NSArray           * _Nonnull images;
// height
@property (nonatomic, assign) CGFloat           row_height;
// font
@property (nonatomic, assign) CGFloat           fontSize;
// textColor
@property (nonatomic, strong) UIColor           * _Nonnull titleTextColor;

@property (nonatomic, assign) NSTextAlignment   textAlignment;

@property (nonatomic,weak) SelectIndexBlock _Nullable idxBlock;

- (void)passIdx:(SelectIndexBlock _Nonnull)block;

@end
