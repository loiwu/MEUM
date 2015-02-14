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
    
    if ([vTitle isEqualToString:@"The Ice Breaker"]) {
        vContents = @"\r\r\r\r    Many Toastmasters are keen to do their projects but soon run out of ideas. The speech projects prescribe the parameters, but do not provide the topics. And so we wait for the ideas to form for each project, and take years to complete our CTM ranking. This is bad for the club because it sets back the DCP goals; it is also bad for the Toastmaster because it hinders his speech progress. If this is your problem, I have the solution. Read on!\r\r    A friend of mine laughs at people who struggle to pay income tax. His strategy is simple. Estimate the tax payable from the beginning of your calendar year and put the money aside on a monthly basis. The result? No matter how much the taxman asks for, you have more than enough to settle the bill.\r\r    The same remedy can be used for your Toastmasters project speeches. Create a speech databank! Set up an 'account book' for depositing ideas, and you will have a wealth of ideas from which to draw inspiration for your speeches. The secret comes from a Black preacher. A dynamite of a preacher, someone asked him what made him such a powerful speaker. His answer 'First ah reads me full, then ah thinks me clear, then ah prays me hot; and then ah lets go!'. Translated into a formula that will work for a Toastmaster, it goes like this:\r    - Reading conscientiously;\r    - Thinking clearly;\r    - Planning carefully.\r\r    1. Read Conscientiously\r\r    Many of us do not read very widely. To be a good speaker, we have to. If you want something badly, but have no money, what do you do? You make money!\r\r    Here are some suggestions. How about spending half an hour of your lunch break for reading. It will leave you with interesting ideas to bedazzle your audience. Alternatively, plan to set aside two hours over the weekend for your personal development through reading.\r\r    What to read? First read professionally - things related to your area of expertise. This is the easiest place to start. Secondly, read for literary enjoyment! Catch up on the best selling authors, be it fiction or non-fiction. Thirdly, read for cultural development. Books on religion, philosophy and psychology provide a powerful stimulus for quick thinking.\r\r    2. Think Creatively\r\r    In order for you to think clearly, you need to first create mental 'play-time'. How do you go about creating 'thinking time'? I have two suggestions.\r\r    First exercise regularly. While exercising, your body is kept busy, and this is the best time for mental calisthenics! Your brain goes into overdrive (stimulated by the endorphins released into your blood stream), and thinks of the most interesting things. Secondly, maximise on 'mindless' time - like when performing daily rituals or when travelling. I often tell my students to use travel time to practise impromptu speech (table topics).\r\r    Jot down good ideas when they come, or they will soon disappear from your mental landscape! My best speech ideas often come when I am jogging or cycling, and I have to write them down the moment I can lay my hands on pen and paper.\r\r    3. Plan Carefully\r\r    Where are you in your speech development? Are you on your way to being a better public speaker, or are you just marking time at the Toastmasters Club? One simple way to ensure progress is to set up a system that will compel you to deliver your speeches regularly. My formula is as follows:\r\r    Plan to do one speech a month. This will ensure you attain a new ranking every year. And it is really easier than you think. Here is how it works. Week One: Read the manual requirements, and start to think how you are going to fulfil them. Week Two: Settle on a topic, then start to develop a simple speech outline, or at least jot down some thoughts.\r\r    Week Three: Write out your speech early in the week, then edit and refine. Week Four: Practise and rehearse. It is easy to do one speech a month, and both you and your club will be on the way to success!\r\r    Conclusion\r\r    Good ideas abound in life. All we need is a system for harvesting them. Make time to read: and you will be generating and germinating ideas. Make time to think: ideas need time for incubation, and periods of exercise and leisure can be your most creative moments. Make time to write: whatever you do, give life to your ideas. Follow this simple plan and the speech databank you set up will launch the speech communicator within you in an effective way.\r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Organize Your Speech"]) {
        vContents = @"\r\r\r\r    Many Toastmasters are keen to do their projects but soon run out of ideas. The speech projects prescribe the parameters, but do not provide the topics. And so we wait for the ideas to form for each project, and take years to complete our CTM ranking. This is bad for the club because it sets back the DCP goals; it is also bad for the Toastmaster because it hinders his speech progress. If this is your problem, I have the solution. Read on!\r\r    A friend of mine laughs at people who struggle to pay income tax. His strategy is simple. Estimate the tax payable from the beginning of your calendar year and put the money aside on a monthly basis. The result? No matter how much the taxman asks for, you have more than enough to settle the bill.\r\r    The same remedy can be used for your Toastmasters project speeches. Create a speech databank! Set up an 'account book' for depositing ideas, and you will have a wealth of ideas from which to draw inspiration for your speeches. The secret comes from a Black preacher. A dynamite of a preacher, someone asked him what made him such a powerful speaker. His answer 'First ah reads me full, then ah thinks me clear, then ah prays me hot; and then ah lets go!'. Translated into a formula that will work for a Toastmaster, it goes like this:\r    - Reading conscientiously;\r    - Thinking clearly;\r    - Planning carefully.\r\r    1. Read Conscientiously\r\r    Many of us do not read very widely. To be a good speaker, we have to. If you want something badly, but have no money, what do you do? You make money!\r\r    Here are some suggestions. How about spending half an hour of your lunch break for reading. It will leave you with interesting ideas to bedazzle your audience. Alternatively, plan to set aside two hours over the weekend for your personal development through reading.\r\r    What to read? First read professionally - things related to your area of expertise. This is the easiest place to start. Secondly, read for literary enjoyment! Catch up on the best selling authors, be it fiction or non-fiction. Thirdly, read for cultural development. Books on religion, philosophy and psychology provide a powerful stimulus for quick thinking.\r\r    2. Think Creatively\r\r    In order for you to think clearly, you need to first create mental 'play-time'. How do you go about creating 'thinking time'? I have two suggestions.\r\r    First exercise regularly. While exercising, your body is kept busy, and this is the best time for mental calisthenics! Your brain goes into overdrive (stimulated by the endorphins released into your blood stream), and thinks of the most interesting things. Secondly, maximise on 'mindless' time - like when performing daily rituals or when travelling. I often tell my students to use travel time to practise impromptu speech (table topics).\r\r    Jot down good ideas when they come, or they will soon disappear from your mental landscape! My best speech ideas often come when I am jogging or cycling, and I have to write them down the moment I can lay my hands on pen and paper.\r\r    3. Plan Carefully\r\r    Where are you in your speech development? Are you on your way to being a better public speaker, or are you just marking time at the Toastmasters Club? One simple way to ensure progress is to set up a system that will compel you to deliver your speeches regularly. My formula is as follows:\r\r    Plan to do one speech a month. This will ensure you attain a new ranking every year. And it is really easier than you think. Here is how it works. Week One: Read the manual requirements, and start to think how you are going to fulfil them. Week Two: Settle on a topic, then start to develop a simple speech outline, or at least jot down some thoughts.\r\r    Week Three: Write out your speech early in the week, then edit and refine. Week Four: Practise and rehearse. It is easy to do one speech a month, and both you and your club will be on the way to success!\r\r    Conclusion\r\r    Good ideas abound in life. All we need is a system for harvesting them. Make time to read: and you will be generating and germinating ideas. Make time to think: ideas need time for incubation, and periods of exercise and leisure can be your most creative moments. Make time to write: whatever you do, give life to your ideas. Follow this simple plan and the speech databank you set up will launch the speech communicator within you in an effective way.\r\r\r\r\r\r";
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
