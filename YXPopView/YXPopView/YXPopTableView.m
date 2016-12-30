//
//  YXPopTableView.m
//  YXPopView
//
//  Created by yx on 2016/12/30.
//  Copyright © 2016年 www.yixun.net. All rights reserved.
//

#import "YXPopTableView.h"

@interface YXPopTableView ()

@property (nonatomic, strong) UITableView *tableView;


@end

@implementation YXPopTableView

- (instancetype)initWithOrigin:(CGPoint)point Width:(CGFloat)width Height:(CGFloat)height Type:(YXDirectionType)type color:(UIColor *)color
{
    if ([super initWithOrigin:point Width:width Height:height Type:type color:color]) {
        
        // 添加tableview
        [self.backGoundView addSubview:self.tableView];
        
    }
    return self;
}

- (void)passIdx:(SelectIndexBlock)block
{

    self.idxBlock = block;
}

#pragma mark -
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.backGoundView.frame.size.width, self.backGoundView.frame.size.height) style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor clearColor];
//        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.delegate = self;
    }
    return _tableView;
}
#pragma mark -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
#pragma mark -
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.row_height == 0) {
        return 44;
    }else{
        return self.row_height;
    }
}
#pragma mark -
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIdentifier = @"cellIdentifier2";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    cell.layoutMargins = UIEdgeInsetsZero;
    cell.separatorInset = UIEdgeInsetsZero;
    cell.backgroundColor = [UIColor clearColor];
    cell.imageView.image = [UIImage imageNamed:self.images[indexPath.row]];
    cell.textLabel.text = self.dataArray[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:self.fontSize];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
//    cell.textLabel.numberOfLines = 0;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.textColor = self.titleTextColor;
    
    if (self.dataArray.count == 1) {
        self.tableView.bounces = NO;
        self.tableView.separatorColor = [UIColor clearColor];
    }
    
    return cell;
}
#pragma mark -
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    if (self.idxBlock) {
        self.idxBlock(indexPath.row);
        [self removeFromSuperview];
    }
}

@end
