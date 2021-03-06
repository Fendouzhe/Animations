//
//  CustomHeaderFooterView.h
//  Animations
//
//  Created by LeiLuRong on 15/11/30.
//  Copyright © 2015年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CustomHeaderFooterView;

@protocol CustomHeaderFooterViewDelegate <NSObject>

@optional

/**
 *  CustomHeaderFooterView's event.
 *
 *  @param customHeaderFooterView CustomHeaderFooterView object.
 *  @param event                  Event data.
 */
- (void)customHeaderFooterView:(CustomHeaderFooterView *)customHeaderFooterView event:(id)event;

@end

@interface CustomHeaderFooterView : UITableViewHeaderFooterView

#pragma mark - Propeties.

/**
 *  CustomHeaderFooterView's delegate.
 */
@property (nonatomic, weak) id <CustomHeaderFooterViewDelegate> delegate;

/**
 *  CustomHeaderFooterView's data.
 */
@property (nonatomic, weak) id data;

/**
 *  UITableView's section.
 */
@property (nonatomic) NSInteger section;

/**
 *  TableView.
 */
@property (nonatomic, weak) UITableView *tableView;

/**
 *  Controller.
 */
@property (nonatomic, weak) UIViewController *controller;

#pragma mark - Some useful method.

/**
 *  Set HeaderFooterView backgroundColor.
 *
 *  @param color Color.
 */
- (void)setHeaderFooterViewBackgroundColor:(UIColor *)color;

/**
 *  Register to tableView with the reuseIdentifier you specified.
 *
 *  @param tableView       TableView.
 *  @param reuseIdentifier The cell reuseIdentifier.
 */
+ (void)registerToTableView:(UITableView *)tableView reuseIdentifier:(NSString *)reuseIdentifier;

/**
 *  Register to tableView with the The class name.
 *
 *  @param tableView       TableView.
 */
+ (void)registerToTableView:(UITableView *)tableView;

#pragma mark - Method override by subclass.

/**
 *  Setup HeaderFooterView, override by subclass.
 */
- (void)setupHeaderFooterView;

/**
 *  Build subview, override by subclass.
 */
- (void)buildSubview;

/**
 *  Load content, override by subclass.
 */
- (void)loadContent;

@end
