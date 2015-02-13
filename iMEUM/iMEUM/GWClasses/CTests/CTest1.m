//
//  CTest1.m
//  iMEUM
//
//  Created by loi on 2/13/15.
//  Copyright (c) 2015 GWrabbit. All rights reserved.
//

#import "CTest1.h"
#import "QEDTextView.h"

@interface CTest1 () <UITextViewDelegate>

@property (nonatomic, strong) QEDTextView *textView;

@end

@implementation CTest1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"弦截法求方程根";
    
    QEDTextView *textView = [[QEDTextView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    textView.editable = NO;
    textView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    textView.delegate = self;
    
    self.textView = textView;
    
    [self.view addSubview:textView];
    
    self.textView.text = @"// 弦截法求方程根\n\n"\
    
    @"#include <stdio.h>\n"\
    @"#include <math.h>\n\n"\
    @"float f(float x)\n"\
    @"{\n"\
    @"    float y;\n"\
    @"    y = ((x - 5.0) * x + 16.0) * x - 80.0;\n"\
    @"    return y;\n"\
    @"}\n\n"\
    
    @"float xpoint(float x1, float x2)\n"\
    @"{\n"\
    @"    float y;\n"\
    @"    y = (x1 * f(x2) - x2 * f(x1))/(f(x2) - f(x1));\n"\
    @"    return y;\n"\
    @"}\n\n"\
    
    @"float root(float x1, float x2)\n"\
    @"{\n"\
    @"    float x,y,y1;\n"\
    @"    y1 = f(x1);\n"\
    @"    do\n"\
    @"    {\n"\
    @"        x = xpoint(x1, x2);\n"\
    @"        y = f(x);\n"\
    @"        if (y * y1 > 0) {\n"\
    @"            y1 = y;\n"\
    @"            x1 = x;\n"\
    @"        } else\n"\
    @"            x2 = x;\n"\
    @"    } while (fabs(y) >= 0.0001);\n"\
    @"    return x;\n"\
    @"}\n\n"\

    @"int main(int argc, const char * argv[])\n"\
    @"{\n"\
    @"    float x1, x2, f1, f2, x;\n"\
    @"    do\n"\
    @"    {\n"\
    @"        printf(\"input x1, x2:\\n\");\n"\
    @"        scanf(\"%f %f\", &x1, &x2);\n"\
    @"        f1 = f(x1);\n"\
    @"        f2 = f(x2);\n"\
    @"    } while (f1 * f2 >= 0);\n"\
    @"    x = root(x1, x2);\n"\
    @"    printf(\"A root of equation is %8.4f\\n\", x);\n"\
    @"    return 0;\n"\
    @"}\n\n";
}

@end
