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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
