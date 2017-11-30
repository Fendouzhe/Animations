//
//  TableViewTapAnimationController.m
//  Animations
//
//  Created by LeiLuRong on 15/11/27.
//  Copyright © 2015年 LeiLuRong. All rights reserved.
//

#import "TableViewTapAnimationController.h"
#import "TableViewTapAnimationCell.h"
#import "UIView+SetRect.h"
#import "TapAnimationModel.h"

@interface TableViewTapAnimationController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView                        *tableView;
@property (nonatomic, strong) NSMutableArray <CellDataAdapter *> *dataArray;

@end

@implementation TableViewTapAnimationController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Init dataArray.
    self.dataArray = [NSMutableArray array];
    NSArray *array = @[[TapAnimationModel modelWithName:@"LeiLuRong" selected:YES],
                       [TapAnimationModel modelWithName:@"NoZuoNoDie"  selected:NO],
                       [TapAnimationModel modelWithName:@"Animations"  selected:NO]];
    
    for (int i = 0; i < array.count; i++) {
        
        [self.dataArray addObject:[TableViewTapAnimationCell dataAdapterWithCellReuseIdentifier:nil data:array[i] cellHeight:80 type:0]];
    }
    
    // Init TableView.
    self.tableView                = [[UITableView alloc] initWithFrame:self.contentView.bounds];
    self.tableView.delegate       = self;
    self.tableView.dataSource     = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [TableViewTapAnimationCell registerToTableView:self.tableView];
    [self.contentView addSubview:self.tableView];
}

#pragma mark - UITableView's delegate & dataSource.

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return [tableView dequeueReusableCellAndLoadDataWithAdapter:_dataArray[indexPath.row] indexPath:indexPath];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [(CustomCell *)[tableView cellForRowAtIndexPath:indexPath] selectedEvent];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return _dataArray[indexPath.row].cellHeight;
}

@end
