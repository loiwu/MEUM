//
//  UIColor+Colorful.m
//  BAEN
//
//  Created by loi on 5/21/14.
//  Copyright (c) 2014 justek LLC . All rights reserved.
//

// -loi- // Control the main UI dominant tone - choose blue

#import "UIColor+Colorful.h"

@implementation UIColor (Colorful)

+ (UIColor *)mainColorfulColor {

      return [UIColor colorWithRed:(218.0f / 255.0f) green:(165.0f / 255.0f) blue:(32.0f / 255.0f) alpha:1.0f];
}

+ (UIColor *)lightColorfulColor {
    
    return [UIColor colorWithRed:(10.0f / 255.0f) green:(117.0f / 255.0f) blue:(204.0f / 255.0f) alpha:1.0f];
}

+ (UIColor *)paleColorfulColor {
    return [UIColor colorWithRed:(255.0f / 255.0f) green:(190255.0f / 255.0f) blue:(210.0f / 255.0f) alpha:1.0f];
}

+ (UIColor *)customGrayColor
{
    return [self colorWithRed:84 green:84 blue:84];
}

+ (UIColor *)customRedColor
{
    return [self colorWithRed:231 green:76 blue:60];
}

+ (UIColor *)customYellowColor
{
    return [self colorWithRed:241 green:196 blue:15];
}

+ (UIColor *)customGreenColor
{
    return [self colorWithRed:46 green:204 blue:113];
}

+ (UIColor *)customBlueColor
{
    return [self colorWithRed:52 green:152 blue:219];
}

#pragma mark - Private class methods

+ (UIColor *)colorWithRed:(NSUInteger)red
                    green:(NSUInteger)green
                     blue:(NSUInteger)blue
{
    return [UIColor colorWithRed:(float)(red/255.f)
                           green:(float)(green/255.f)
                            blue:(float)(blue/255.f)
                           alpha:1.f];
}


@end
