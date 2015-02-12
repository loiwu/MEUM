//
//  BAENTabItem.m
//  BAEN
//
//  Created by loi on 8/16/14.
//  Copyright (c) 2014 justek LLC . All rights reserved.
//

#import "BAENTabItem.h"

@interface BAENTabItem ()

@property (readwrite) SEL selector;
@property (nonatomic, assign) id target;

@property (nonatomic, strong) UIImage *imageEnabled;
@property (nonatomic, strong) UIImage *imageDisabled;
@property (readwrite) TabType tabType;

@end

@implementation BAENTabItem

+ (BAENTabItem *)createUsualItemWithImageEnabled:(UIImage *)imageEnabled
                                 imageDisabled:(UIImage *)imageDisabled {
    BAENTabItem *tabItem = [[BAENTabItem alloc] init];
    if (tabItem) {
        tabItem.imageEnabled = imageEnabled;
        tabItem.imageDisabled = imageDisabled;
        tabItem.tabState = TabStateDisabled;
        tabItem.tabType = TabTypeUsual;
    }
    return tabItem;
}

+ (BAENTabItem *)createUnexcludableItemWithImageEnabled:(UIImage *)imageEnabled
                                        imageDisabled:(UIImage *)imageDisabled {
    BAENTabItem *tabItem = [[BAENTabItem alloc] init];
    if (tabItem) {
        tabItem.imageEnabled = imageEnabled;
        tabItem.imageDisabled = imageDisabled;
        tabItem.tabState = TabStateDisabled;
        tabItem.tabType = TabTypeUnexcludable;
    }
    return tabItem;
}

+ (BAENTabItem *)createButtonItemWithImage:(UIImage *)image
                                  target:(id)target
                                selector:(SEL)selector {
    BAENTabItem *tabItem = [[BAENTabItem alloc] init];
    if (tabItem) {
        tabItem.imageEnabled = image;
        tabItem.tabType = TabTypeButton;
        tabItem.target = target;
        tabItem.selector = selector;
    }
    return tabItem;
}

- (UIImage *)imageEnabled {
    if (!_imageEnabled) {
        _imageEnabled = self.imageDisabled;
    }
    return _imageEnabled;
}

- (UIImage *)imageForCurrentState {
    switch (self.tabState) {
        case TabStateEnabled:
            return self.imageEnabled;
            break;
        case TabStateDisabled:
            return self.imageDisabled;
            break;
        default:
            return nil;
            break;
    }
}

- (void)switchState {
    switch (self.tabState) {
        case TabStateEnabled:
            self.tabState = TabStateDisabled;
            break;
        case TabStateDisabled:
            self.tabState = TabStateEnabled;
            break;
        default:
            return;
            break;
    }
}

@end

