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
    
    if ([vTitle isEqualToString:@"Set up Speech Databank"]) {
        vContents = @"\r\r\r\r    Many Toastmasters are keen to do their projects but soon run out of ideas. The speech projects prescribe the parameters, but do not provide the topics. And so we wait for the ideas to form for each project, and take years to complete our CTM ranking. This is bad for the club because it sets back the DCP goals; it is also bad for the Toastmaster because it hinders his speech progress. If this is your problem, I have the solution. Read on!\r\r    A friend of mine laughs at people who struggle to pay income tax. His strategy is simple. Estimate the tax payable from the beginning of your calendar year and put the money aside on a monthly basis. The result? No matter how much the taxman asks for, you have more than enough to settle the bill.\r\r    The same remedy can be used for your Toastmasters project speeches. Create a speech databank! Set up an 'account book' for depositing ideas, and you will have a wealth of ideas from which to draw inspiration for your speeches. The secret comes from a Black preacher. A dynamite of a preacher, someone asked him what made him such a powerful speaker. His answer 'First ah reads me full, then ah thinks me clear, then ah prays me hot; and then ah lets go!'. Translated into a formula that will work for a Toastmaster, it goes like this:\r    - Reading conscientiously;\r    - Thinking clearly;\r    - Planning carefully.\r\r    1. Read Conscientiously\r\r    Many of us do not read very widely. To be a good speaker, we have to. If you want something badly, but have no money, what do you do? You make money!\r\r    Here are some suggestions. How about spending half an hour of your lunch break for reading. It will leave you with interesting ideas to bedazzle your audience. Alternatively, plan to set aside two hours over the weekend for your personal development through reading.\r\r    What to read? First read professionally - things related to your area of expertise. This is the easiest place to start. Secondly, read for literary enjoyment! Catch up on the best selling authors, be it fiction or non-fiction. Thirdly, read for cultural development. Books on religion, philosophy and psychology provide a powerful stimulus for quick thinking.\r\r    2. Think Creatively\r\r    In order for you to think clearly, you need to first create mental 'play-time'. How do you go about creating 'thinking time'? I have two suggestions.\r\r    First exercise regularly. While exercising, your body is kept busy, and this is the best time for mental calisthenics! Your brain goes into overdrive (stimulated by the endorphins released into your blood stream), and thinks of the most interesting things. Secondly, maximise on 'mindless' time - like when performing daily rituals or when travelling. I often tell my students to use travel time to practise impromptu speech (table topics).\r\r    Jot down good ideas when they come, or they will soon disappear from your mental landscape! My best speech ideas often come when I am jogging or cycling, and I have to write them down the moment I can lay my hands on pen and paper.\r\r    3. Plan Carefully\r\r    Where are you in your speech development? Are you on your way to being a better public speaker, or are you just marking time at the Toastmasters Club? One simple way to ensure progress is to set up a system that will compel you to deliver your speeches regularly. My formula is as follows:\r\r    Plan to do one speech a month. This will ensure you attain a new ranking every year. And it is really easier than you think. Here is how it works.\r    Week One: Read the manual requirements, and start to think how you are going to fulfil them. \r    Week Two: Settle on a topic, then start to develop a simple speech outline, or at least jot down some thoughts.\r    Week Three: Write out your speech early in the week, then edit and refine. \r    Week Four: Practise and rehearse. It is easy to do one speech a month, and both you and your club will be on the way to success!\r\r    Conclusion\r\r    Good ideas abound in life. All we need is a system for harvesting them. Make time to read: and you will be generating and germinating ideas. Make time to think: ideas need time for incubation, and periods of exercise and leisure can be your most creative moments. Make time to write: whatever you do, give life to your ideas. Follow this simple plan and the speech databank you set up will launch the speech communicator within you in an effective way.\r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Program Assignment Guide"]) {
        vContents = @"\r\r\r\r    1 - Toastmaster\rDuties: Act as a genial host/hostess; Earnestness, good humor and enthusiasm is needed.\r\rPrior to the Meeting\r    •Check with VP Education or the future agenda to find out the:\rProgram changes\rParticipants and their roles\rSpecial events, such as new member inductions, award ceremonies or officer installations\r    •Complete the speaker biography sheets before the assignment. This will make the introduction easier. This biography sheets should includes:\rSpeaker's background\rPrevious speeches\rSpeech number and manual\rNature, purpose and objectives\rTiming\rThe title of the speech.\r\rUpon Arrival at the Meeting\r    •Check that all assignment takers are present. The assignment takers include Timer, Grammarian/Ah counter, Table Topic Master, General Evaluator and prepared speech speakers.\r    •Remind TTM not to call on Speakers for Prepared Speech.\r\rDuring the Meeting\r    •Arrive early in order to confirm role takers have arrived.\r    •Find substitutes if necessary. (Ask EVP/President to help if necessary)\r    •When introducing the speakers give a brief and prestigious introduction.\r    •Don't comment on the speech after the speaker finishes. Merely thank the speaker.\r    •Always lead the applause before & after the speaker starts/finishes.\r    •Remain standing near the lectern after the introduction till the speaker has acknowledged you and assumed control of the meeting, then be seated.\r    •Take full control of the meeting, especially when speakers go over time.\r\rA Sample Script for the Toastmaster\rHere is your script for the introduction to Toastmaster duties:\rWelcome to Dalian Toastmasters Club!\rMy name is, and I will be your host for this evening. Whether you are a professional or a student, Toastmaster is the best way for you to improve your communication skills. You not only learn to speak confidently, but also to listen effective by taking on the role of an evaluator. Basically, tonight’s agenda is divided into 2 main portion: Impromptu and prepared speeches. To achieve the purpose of Toastmaster, every speech will be evaluated. Before we go into the impromptu & prepared speeches, let me introduce to our General Evaluator, who will in turn introduce his team of evaluators. GE…\r\r *** *** *** *** *** *** \r\r    2 - Grammarian\rDuties: As a grammarian, you need to comment on the use of English during the meeting.\r\rPrior to the Meeting\rPrepare a brief explanation of duties.\r    •Select a “Word of the Day”. A work that can be incorporated easily into everyday conversation. An adjective or adverb is suggested since they are more adaptable than a noun or verb.\r\rDuring the Meeting\r    •Briefly explain the role of the grammarian\r    •Announce the “Word of the day,” define it, use it in a sentence, and ask anyone speaking during any part of the meeting use it.\r    •Listen for the vocabulary, pronunciation and grammar.\r    •Throughout the meeting, listen to everyone’s word usage; Write down any awkward use or misuse of the language.\r    •Note the good use of words.\r    •Point out the “Word of the day”.\r    •Give fresh viewpoints by offering the correct usage in every instance where there was misuse instead of only explaining what was wrong.\r    •Report on creative language usage.\r\rA Sample Script for the Grammarian\rHere is your script for the introduction to Grammarian duties:\rGood evening, my fellow toastmasters & welcomed guests! I’m pleased to be the Grammarian of tonight’s meeting.\rAs a grammarian, my job is to pick out the good usage and bad usage of language during the meeting. I will pay attention to your pronunciation, grammar and vocabulary.\rAt the end of the meeting, I will make a report based on my observation for you.\rToastmaster of the Evening!\r\r *** *** *** *** *** *** \r\r    3 - Ah Counter\rDuties:  The purpose of the Ah counter is to note words and sounds used as a “pause filler”. The Pause filler is not only “ah, um, er”, but also the repetitive words such as “I, I” or “This means, this means.” The Pause filler occurs when the speaker is thinking over what to say next so it shows the nervousness and lessen your reliability and conviction of the speech subject. Eliminating these pause filler will improve the quality of your presentation.\r\rSome examples of “Ah”s include:\rSounds such as“uh, um, er”\r    •Repeats of a word or phrase such as “I, I” or “This means, this means.”\r\rPrior to the Meeting\rPrepare a brief explanation of duties.\r\rDuring the Meeting\r    •Throughout the meeting, listen for the “Ah”s made by every speaker and count them accurately.\r    •Report the number of Ahs made by the speakers during evaluation session.\r\rA Sample Script for the Ah Counter\rHere is your script for the introduction to Ah Counter duties:\rGood evening, my fellow toastmasters & welcomed guests! I’m pleased to be the Ah-Counter of tonight’s meeting.\rIn the speech, there are sounds and words used as “pause filler”, Eg, sounds like “ah”, “er” and “em” repetitive words such as “I, I” or “This means, this means.” Eliminating these annoying sounds and words will improve the quality of your presentation. I will count the number of the “ahs” I hear you make. At the end of the meeting, I will make a report for you.\rMr/Madam General Evaluator!\r\r *** *** *** *** *** *** \r\r    4 - Timer\r\rUpon arrival at the meeting:\rGet the stop watch, timing card and the bell from the Sergeant as Arms. Sit by the timer table where the timing card can be seen easily by all.\r\rDuring the meeting:\rTime every session. When signal, hold the card high so the speaker can see it easily. Each light being on for one minute except the red light which remains on until the speaker has finished. After the 30 seconds after the red card, ring the bell.\rIn your report only announce the chief offenders as far as overtime and undertime is concerned.Ask one member near you to time you when you introduce the timer role and give the timer report.\r\rAfter the Meeting:\rReturn the stop watch, timing card and the bell to the Sergeant at Arms.\r\rA Sample Script for the Timer\rGood evening, my fellow toastmasters & welcomed guests! I’m pleased to be the timer of tonight’s meeting. One important skill of a good speaker is to express a thought within a specific time. As the timer, I will help you develop this skill.\rPlease note the following rules:\rThe assigned time for Table Topic speakers and Evaluators is 2 minutes. When you see the Green card, you have used the minimum requirement of the time: 1 minute. When you see the yellow card, you have 1 minute left. And when the red card is held up, please conclude your speech within 30 seconds.\rThe assigned time for Prepared speakers is generally 5-7 minutes. When you see the Green card, you have used the minimum requirement of the time: 5 minutes. When you see the yellow card, you have 1 minute left. And when the red card is held up, please conclude your speech within 30 seconds\rI will give you the timer report in the end of the meeting.\rMr/Madam. Toastmaster!\r\r *** *** *** *** *** *** \r\r    5 - Table Topics Master (TTM)\r\rTable Topics has a twofold purpose: First, to give everyone in the room an opportunity to speak, second, to get people to learn to “think and speak on their feet.”\r\rThe session must be featured by enthusiasm, variety, interest and the presentation of an achievable challenge to each speaker.\r\rPhrase the question in such a way that the speaker clearly will know what you want them to talk about. If the participant doesn’t understand the question, repeat and explain it. Or give them another question.\r\rAs the speaker speaking, put their name down on the white board to help the audience and the Table Topics Evaluator to evaluate.\rKeep your comments short. Table Topics Evaluator will give evaluation to the speakers.\r\rGuidelines\r\r    How to choose Table Topics questions:	\r    DO\r    1. Prepare questions that will inspire the speakers to expound on them, give their opinions, etc.\r    2. Prepare at least 8 questions for a 16 minutes session. (e.g. Current events are good topics)\r    3. Ask your mentor or an experienced member if you are not sure how to prepare questions\r    DO NOT:\r    4. Make the questions too long or too complicated.\r    5. Don’t choose racial, religious, sexual, and topics of bad taste.	\r\rHow to choose Table Topics speakers:\r    DO\r    1. Choose an experienced member first (CTM or above)\r    2. Select members who do not have an assignment first (see tonight’s agenda).\r    3. Ask the question first, then call member’s name or number. (Before the meeting you can give numbers to about 8 people, then call numbers at random.)\r    4. Finally choose one or two guests.\r    DO NOT:\r    5.	Call a guest as the first speaker\r    6.	Call more guests than members\r\r    A Sample Script for the Table Topic Master\rHere is your script for the introduction to TTM duties:\rGood evening, my fellow toastmasters & welcomed guests! I am the Table Topics Master tonight.\rTable Topics or impromptu speaking helps members think on their feet.\rI will ask questions or present situations based around this theme. After I have read out the questions, I will choose a member to come up and give a 2 minute speech on the topic. Please listen carefully.\rAfter the session you will be asked to vote on the Best Table Topics speaker. Please write down your choice on the voting slips provided and return to the Sergeant at Arms who will collect it. Thank you.\r\rResources: A list of Creative ideas to trigger an impromptu table topic speech\r\r    Song Writer\r\rI have music books around (50's 60's folk and rock songs) so I will take the first line from a song as the table topic. The speaker is to explain what inspired them to begin this song with this phrase.\rSubmitted by Joe Caruso; Trinity Square Toastmasters; Toronto, Ontario.\r\r    Book Tour\r\rI explain to the members that they have just authored a book and they are on a promotional tour for their book. They are to explain to the members why we should all rush out and buy wonderful book, whose title they obtain from the table topics envelope.\rSubmitted by Joe Caruso; Trinity Square Toastmasters; Toronto, Ontario.\r\r    Life As An Object\r\rAsk the participant to describe his/her life if he/she was an object, i.e., a mirror, a table, a chair, a briefcase, a door, etc.\rSubmitted by Sylvie Limoges, CTM; District 61 Secretary;\r\r    Noah's Ark\r\rNoah's Ark table topics are a lot of fun! Noah's Ark is about to embark and there is room for only one more pair of animals. Each speaker selects a piece of paper. On it, is printed the name of an animal. The speaker then 'becomes' that animal and makes a case as to why s/he and his/her mate should be the ones selected for that last vacancy. They are instructed in advance that they are not to give the name of their animal; just the reasons why they should be chosen. Some ideas are peacock, hippopotamus, rattlesnake, kangaroo, mouse, and alligator. The vote for “Best Table Topics Speaker” determines which pair gets to sail on the Ark!\rSubmitted by Susan Niven, DTM; Langley BC Canada\r\r    CLUB ELECTIONS\r\rIn an envelope, have a selection of the 7 Club Executive Positions on pieces of paper. Duplicate or triplicate them as necessary, so you have enough for each person in attendance.Each person is to select one piece of paper from the envelope and explain why they would the right person for the position.\rSubmitted by Jim Scollick - Thornhill Toastmasters; Thornhill, Ontario.\r\r *** *** *** *** *** *** \r\r     6 - Table Topics Evaluator (TTE)\r\rThe Table Topics Evaluator should evaluate the degree of effectiveness achieved in procuring audience reaction.\r\rHe should give one good point and one point for improvement about each speaker\rPoints to watch for are - speaking pace, stance, vocal variety, nervous mannerisms, eye contact, enthusiasm, conviction, opening-body-conclusion, relevance, directness, clarity and organisation of material.\r\r *** *** *** *** *** *** \r\r    7 - Prepared Speaker\r\rDuties: Prepare, rehearse and deliver the speeches from Toastmasters manual; Learn from other speakers.\r\r    Evaluation of Table Topics Master\r1. Did the table topic master effectively make the audience involved in?\r2. How appropriate were the questions? (easy to understand, on suitable topics)\r4. How well did the Table Topics Master prepare?\r3. How well did the table topic master make the question understood by the speakers?\r5. Did the Table Topics Master shake the hands of each speaker before and after the speech?\r\r    Evaluation of Flow\r1. Was the first speaker called up an experienced member (CTM or above) or speaker?\r2. Were all members who are not doing assignments called upon to speak?\r3. How many guests were called versus members? (should be more members)\r4. Did the session end on time?\r\r    Talk with your mentor to develop strong speech content.\rPractice your final script at least five times; Record and re-listen to your rehearsals.\rPrepare visual aids (if necessary).\rBring your manual to the meeting to give to your individual evaluator.\rCall VP Education in advance if can’t attend the meeting.\r\r    Entering the Room\r    Arrive early to check microphone, lighting, visual aids or white board.\r    Dress appropriately & comfortably.\r\r    During the Meeting\r    Shake hands with TM before your speech.\r    Always acknowledge the Toastmaster and audience at the beginning.\r    Present the speech according to the manual.\r    Wait for the TM to return to the lectern.\r    NEVER thank / apologise to audience.\r    Listen to evaluations for helpful hints.\r    Ask other members to comment on your speech.\r\r *** *** *** *** *** *** \r\r    8 - General Evaluator (GE)\rDuties: Evaluate everything that takes place throughout the meeting; Help individual evaluators.\r\rPrior to the Meeting\rCheck with TM to find out how the program will be conducted.\r    •Prepare a brief but thorough talk on the purpose, techniques, and benefits of evaluation.\r    •Prepare to evaluate the strengths and improvement areas for individual evaluators.\r\rUpon Arrival at the Meeting\r    •Check if evaluation team and speaker is present.\r    •Ask the TM if any agenda changes have been made.\r\rDuring the Meeting\r    •Observe the setting, the transitions, session masters, TM and flow of the meeting.\rWhen introduced to conduct the evaluation phase of the meeting, go to the lectern and introduce each evaluator. After each recitation, thank the evaluator for his or her efforts.\r    •Call for Grammarian/ Ah Counter’s report.\r    •Call for timer's report.\r    •Wrap up by giving your general evaluation of the meeting. The General Evaluation should be concise and precise and remain within the prescribed time limit.\r\rAfter the Meeting\rWrite Meeting Minutes\r    •Compose your general evaluation into the minutes of the meeting.\r    •Mention all the role takers by name (briefly) as people like to see their names on print.\r    •Mention TT speakers by name.\r    •Mention any guests name from “Comments from Guests” session.\r    •Email to the Secretary by Wednesday\r\r *** *** *** *** *** *** \r\r    9 - Evaluator\rDuties:  Help the speaker become less self-conscious and a better speaker. The evaluator should not comment on the CONTENT, only the DELIVERY.\r\rPrior to the Meeting\r    Review carefully the Effective Speech Evaluation manual, which you received in your New Member Kit.\r    Study the project objectives as well as the evaluation guide in the manual.\r\rUpon Arrival at the Meeting\r    Look for the speaker and get his or her manual.\r    Confer with the speaker to see if he or she has any specific things for you to watch for during the talk.\r\rDuring the Meeting\r    •The evaluator should give their evaluation from separate notes (not from the manual) in 2 minutes. It should be a speech, not answers to the questions in the manual.\rBegin and end your evaluation with a note of encouragement or praise.\r    •Always leave the speaker with specific methods for improving.\rGive the speaker the deserved praise and constructive suggestions in the manner you would like to receive them when you are the speaker.\r\r *** *** *** *** *** *** \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"The Ice Breaker"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Organize Your Speech"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Get to the Point"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"How to Say It"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Your Body Speaks"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Vocal Variety"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Research Your Topic"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Get Comfortable with Visual Aids"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Persuade with Power"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
    } else if ([vTitle isEqualToString:@"Inspire Your Audience"]) {
        vContents = @"\r\r\r\r    \r\r\r\r\r\r";
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
