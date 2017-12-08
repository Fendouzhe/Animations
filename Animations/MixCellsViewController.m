//
//  MixCellsViewController.m
//  Animations
//
//  Created by LeiLuRong on 2016/11/24.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "MixCellsViewController.h"
#import "UIColor+ForPublicUse.h"
#import "HeaderIconCell.h"
#import "ContentIconCell.h"
#import "ColorSpaceCell.h"

typedef enum : NSUInteger {
    
    kSpace = 1000,
    kLongType,
    kShortType,
    
} ELineTypeValue;

@interface MixCellsViewController () <UITableViewDelegate, UITableViewDataSource, CustomCellDelegate> {

    HeaderIconCell *_headerCell;
}

@property (nonatomic, strong) NSMutableArray <CellDataAdapter *> *adapters;
@property (nonatomic, strong) UITableView                        *tableView;

@end

@implementation MixCellsViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    [self createTableViewAndRegisterCells];
    
    [self createDataSource];
    
    [self baseConfig];
}

#pragma mark - Data source.

- (void)createDataSource {

    self.adapters = [NSMutableArray array];
    
    [self.adapters addObject:[HeaderIconCell dataAdapterWithData:nil cellHeight:HeaderIconCell.cellHeight]];
    [self.adapters addObject:[self lineType:kSpace height:50.f]];
    [self.tableView reloadData];
    
    [UIView animateWithDuration:0.75f animations:^{
        
        self.tableView.alpha = 1.f;
        
    } completion:^(BOOL finished) {
        //长分割线--也是一个cell
        [self.adapters addObject:[self lineType:kLongType height:0.5f]];
        [self.adapters addObject:[ContentIconCell dataAdapterWithData:@{@"icon" : @"signlist_new",   @"title" : @"Event Register"}  cellHeight:50.f]];
        //短分割线
        [self.adapters addObject:[self lineType:kShortType height:0.5f]];
        [self.adapters addObject:[ContentIconCell dataAdapterWithData:@{@"icon" : @"collection_new", @"title" : @"Collected Event"} cellHeight:50.f]];
        //短分割线
        [self.adapters addObject:[self lineType:kShortType height:0.5f]];
        [self.adapters addObject:[ContentIconCell dataAdapterWithData:@{@"icon" : @"drawer_setting", @"title" : @"Settings"}        cellHeight:50.f]];
        //长分割线
        [self.adapters addObject:[self lineType:kLongType height:0.5f]];
        
        NSMutableArray *indexPaths = [NSMutableArray array];
        [self.adapters enumerateObjectsUsingBlock:^(CellDataAdapter *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            [indexPaths addObject:[NSIndexPath indexPathForRow:idx inSection:0]];
        }];
        [indexPaths removeObjectsInRange:NSMakeRange(0, 2)];
        [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationFade];
    }];
}

- (CellDataAdapter *)lineType:(ELineTypeValue)type height:(CGFloat)height {

    if (type == kSpace) {//空白cell
    
        return [ColorSpaceCell dataAdapterWithData:nil cellHeight:height];
        
    } else if (type == kLongType) {
    
        return [ColorSpaceCell dataAdapterWithData:@{@"backgroundColor" : [UIColor whiteColor], @"lineColor" : [UIColor lineColor]} cellHeight:height];
        
    } else if (type == kShortType) {
        //leftGap 分割线左间距
        return [ColorSpaceCell dataAdapterWithData:@{@"backgroundColor" : [UIColor whiteColor], @"lineColor" : [UIColor lineColor], @"leftGap" : @(50.f)} cellHeight:height];
        
    } else {
    
        return nil;
    }
}

#pragma mark - UITableView related.

- (void)createTableViewAndRegisterCells {

    self.tableView                 = [[UITableView alloc] initWithFrame:self.contentView.bounds];
    self.tableView.delegate        = self;
    self.tableView.dataSource      = self;
    self.tableView.alpha           = 0.f;
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    [self.contentView addSubview:self.tableView];
    
    [HeaderIconCell  registerToTableView:self.tableView];
    [ContentIconCell registerToTableView:self.tableView];
    [ColorSpaceCell  registerToTableView:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _adapters.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    CellDataAdapter *adapter = _adapters[indexPath.row];
    CustomCell      *cell    = [tableView dequeueReusableCellWithIdentifier:adapter.cellReuseIdentifier];
    cell.dataAdapter         = adapter;
    cell.data                = adapter.data;
    cell.indexPath           = indexPath;
    cell.tableView           = tableView;
    cell.delegate            = self;
    [cell loadContent];
    
    if (_headerCell == nil && [cell isKindOfClass:[HeaderIconCell class]]) {
        
        _headerCell = (HeaderIconCell *)cell;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return _adapters[indexPath.row].cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [(CustomCell *)[tableView cellForRowAtIndexPath:indexPath] selectedEvent];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

    [_headerCell offsetY:scrollView.contentOffset.y];
}

#pragma mark - CustomCellDelegate

- (void)customCell:(CustomCell *)cell event:(id)event {

    NSLog(@"%@", event);
}

#pragma mark - Base config.

- (void)baseConfig {
    
    self.backgroundView.backgroundColor = [UIColor backgroundColor];

    __block UIButton *backButton = nil;
    [self.titleView.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if ([obj isKindOfClass:[UIButton class]]) {
            
            UIButton *button = obj;
            if ([[button imageForState:UIControlStateNormal] isEqual:[UIImage imageNamed:@"backIcon"]]) {
                
                backButton = button;
            }
        }
    }];
    
    [self.contentView addSubview:backButton];
    [self.titleView removeFromSuperview];
}

@end
