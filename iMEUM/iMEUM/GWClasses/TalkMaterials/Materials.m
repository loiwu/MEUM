//
//  Materials.m
//  iMEUM
//
//  Created by loi on 2/13/15.
//  Copyright (c) 2015 GWrabbit. All rights reserved.
//

#import "Materials.h"
#import "TimeIndicatorView.h"
#import "SyntaxHighlightTextStorage.h"

@interface Materials () <UITextViewDelegate>

@end

@implementation Materials
{
    TimeIndicatorView* _timeView;
    SyntaxHighlightTextStorage* _textStorage;
    UITextView* _textView;
    CGRect _textViewFrame;
}
@synthesize vTitle;
@synthesize vContents;

- (id)initWithTitle: (NSString *)title
{
    vTitle = title;
    return self;
}

- (void)createTextView
{
    NSDictionary* attrsT = @{NSFontAttributeName:
                                 [UIFont fontWithName:@"Avenir-Heavy" size:18]};
    NSAttributedString* attrString = [[NSAttributedString alloc] initWithString:vTitle
                                                                     attributes:attrsT];
    _textStorage = [SyntaxHighlightTextStorage new];
    [_textStorage appendAttributedString:attrString];
    
    NSDictionary* attrsC = @{NSFontAttributeName:
                                 [UIFont fontWithName:@"Avenir-Light" size:14]};
    
    if ([vTitle isEqualToString:@"Material 1"]) {
        vContents = @"\r\r\r\r    Bay Area Equestrian Network ( BAEN ) was created in 1997 to promote the equine industry and help horse enthusiasts find equine products and services. We offer classified ads, event calendar, business directory, message boards, how-to videos, member services and Internet marketing.\r\r   BAEN is locally owned and operated from our offices in San Francisco's East Bay. Our organization is supported through the sale of memberships, web site services and advertising. BAEN is sponsored by Extend Inc..\r\r    For more information on any of our services, please call 1-800-943-8883 (925-484-0395) or email us at info@bayequest.com. If you want to promote the equine industry, we want to partner with you.\r\r\r\r\r\r";
    }
    NSAttributedString* contentsString = [[NSAttributedString alloc] initWithString:vContents
                                                                         attributes:attrsC];
    [_textStorage appendAttributedString:contentsString];
    
    CGRect newTextViewRect = self.view.bounds;
    
    NSLayoutManager *layoutManager = [[NSLayoutManager alloc] init];
    
    CGSize containerSize = CGSizeMake(newTextViewRect.size.width, CGFLOAT_MAX);
    NSTextContainer *container = [[NSTextContainer alloc] initWithSize:containerSize];
    container.widthTracksTextView = YES;
    [layoutManager addTextContainer:container];
    [_textStorage addLayoutManager:layoutManager];
    
    _textView = [[UITextView alloc] initWithFrame:newTextViewRect
                                    textContainer:container];
    _textView.dataDetectorTypes = UIDataDetectorTypeAll;
    _textView.delegate = self;
    [self.view addSubview:_textView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createTextView];
    _textView.userInteractionEnabled = YES;
    _textView.editable = NO;
    _textViewFrame = self.view.bounds;
    _textView.scrollEnabled = YES;
    
    // handle content size change notifications
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(preferredContentSizeChanged:)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
    
    
    _timeView = [[TimeIndicatorView alloc] initBAEN:@"iMEUM"];
    [self.view addSubview:_timeView];
}

- (void)viewDidLayoutSubviews {
    [self updateTimeIndicatorFrame];
    _textView.frame = _textViewFrame;
}

- (void) updateTimeIndicatorFrame {
    [_timeView updateSize];
    _timeView.frame = CGRectOffset(_timeView.frame,
                                   self.view.frame.size.width - _timeView.frame.size.width, 0.0);
    
    // add an exclusion path for the time display
    UIBezierPath* exclusionPath = [_timeView curvePathWithOrigin:_timeView.center];
    _textView.textContainer.exclusionPaths  = @[exclusionPath];
}

- (void)preferredContentSizeChanged:(NSNotification *)n {
    _textView.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [self updateTimeIndicatorFrame];
    [_textStorage update];
}

@end
