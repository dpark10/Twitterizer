//
//  ViewController.m
//  Twitterizer
//
//  Created by dp on 3/16/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *inputTextArea;
@property (weak, nonatomic) IBOutlet UILabel *numberOfCharacters;

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
    
    NSString *newString1 = [twitterText stringByReplacingOccurrencesOfString:@"a" withString:@""];
    NSString *newString2 = [newString1 stringByReplacingOccurrencesOfString:@"e" withString:@""];
    NSString *newString3 = [newString2 stringByReplacingOccurrencesOfString:@"i" withString:@""];
    NSString *newString4 = [newString3 stringByReplacingOccurrencesOfString:@"o" withString:@""];
    NSString *newString5 = [newString4 stringByReplacingOccurrencesOfString:@"u" withString:@""];
    NSString *newString6 = [newString5 stringByReplacingOccurrencesOfString:@"y" withString:@""];
    
    self.inputTextArea.text = newString6;

}

@end
