//
//  TimeIndicatorView.h
//  BAEN
//
//  Created by loi on 1/22/15.
//  Copyright (c) 2015 GWrabbit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Colorful.h"

@interface TimeIndicatorView : UIView

- (id) init:(NSDate*)date;
-(id)initBAEN:(NSString *)ibaen;

- (void) updateSize;

- (UIBezierPath *)curvePathWithOrigin:(CGPoint)origin;

@end
