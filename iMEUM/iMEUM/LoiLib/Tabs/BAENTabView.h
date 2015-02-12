//
//  BAENTabView.h
//  BAEN
//
//  Created by loi on 8/16/14.
//  Copyright (c) 2014 justek LLC . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BAENTabItem.h"

typedef struct HorizontalEdgeInsets {
    CGFloat left, right;
} HorizontalEdgeInsets;

static inline HorizontalEdgeInsets HorizontalEdgeInsetsMake (CGFloat left, CGFloat right) {
    HorizontalEdgeInsets insets = {left, right};
    return insets;
}

@class BAENTabItem;
@class BAENTabView;

@protocol BAENTabViewDelegate <NSObject>

//Called for all types except TabTypeButton
- (void)tabView:(BAENTabView *)tabView tabBecameEnabledAtIndex:(int)index tab:(BAENTabItem *)tabItem;
//Called Only for unexcludable items. (TabTypeUnexcludable)
- (void)tabView:(BAENTabView *)tabView tabBecameDisabledAtIndex:(int)index tab:(BAENTabItem *)tabItem;

@end

@interface BAENTabView : UIView

@property (nonatomic, assign) IBOutlet id<BAENTabViewDelegate> delegate;
@property (readwrite) BOOL darkensBackgroundForEnabledTabs;
@property (readwrite) BOOL drawSeparators;
@property (nonatomic, strong) UIColor *enabledTabBackgrondColor;
@property (nonatomic, strong) UIFont *titlesFont;
@property (nonatomic, strong) UIColor *titlesFontColor;
@property (nonatomic, strong) NSArray *tabItems;
@property (nonatomic, readwrite) HorizontalEdgeInsets horizontalInsets;

- (id)initWithFrame:(CGRect)frame andTabItems:(NSArray *)tabItems;

@end
