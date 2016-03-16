//
//  ViewController.m
//  Twitterizer
//
//  Created by dp on 3/16/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *inputTextArea;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)twitterize:(UIButton *)sender {
    NSString *inputText = self.inputTextArea.text;
    NSUInteger length = inputText.length;
    NSMutableString *twitterText = [NSMutableString stringWithString:(inputText)];
    [twitterText setString:[twitterText lowercaseString]];
    NSLog(@"%@", twitterText);
    
    for (int i = 0; i < length; i++) {
        if ([twitterText characterAtIndex:i] == @"a" || @"e" || @"i" || @"o" || @"u" || @"y") {
            
        }
    }
}

@end
