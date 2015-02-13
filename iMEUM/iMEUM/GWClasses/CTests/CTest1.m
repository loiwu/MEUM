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
    self.navigationItem.title = @"C Test 1";
    
    QEDTextView *textView = [[QEDTextView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    textView.editable = NO;
    textView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    textView.delegate = self;
    
    self.textView = textView;
    
    [self.view addSubview:textView];
    
    self.textView.text = @"// Test comment\n\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"// Let's solve our first equation\n"\
    @"plot f(x), g(x)";

}

@end
