//
//  BAENTabItem.h
//  BAEN
//
//  Created by loi on 8/16/14.
//  Copyright (c) 2014 justek LLC . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
    TabStateEnabled,
    TabStateDisabled
} TabState;

typedef enum {
    TabTypeUsual,
    TabTypeButton,
    TabTypeUnexcludable
} TabType;

@interface BAENTabItem : NSObject

@property (readwrite) TabState tabState;
@property (readonly) TabType tabType;
@property (nonatomic, assign, readonly) id target;
@property (readonly) SEL selector;
@property (nonatomic, strong) UIColor *enabledBackgroundColor;
@property (nonatomic, strong) UIColor *backgroundColor;
@property (nonatomic, strong) NSString *titleString;
@property (nonatomic, strong) UIFont *titleFont;
@property (nonatomic, strong) UIColor *titleFontColor;
@property (nonatomic, strong, readonly) UIImage *imageForCurrentState;

+ (BAENTabItem *)createUsualItemWithImageEnabled:(UIImage *)imageEnabled
                                 imageDisabled:(UIImage *)imageDisabled;

+ (BAENTabItem *)createUnexcludableItemWithImageEnabled:(UIImage *)imageEnabled
                                        imageDisabled:(UIImage *)imageDisabled;

+ (BAENTabItem *)createButtonItemWithImage:(UIImage *)image
                                  target:(id)target
                                selector:(SEL)selector;

- (void)switchState;

@end

