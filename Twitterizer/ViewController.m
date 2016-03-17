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
    NSMutableString *twitterText = [NSMutableString stringWithString:self.inputTextArea.text];

    NSString *newString1 = [twitterText stringByReplacingOccurrencesOfString:@"a" withString:@""];
    NSString *newString2 = [newString1 stringByReplacingOccurrencesOfString:@"e" withString:@""];
    NSString *newString3 = [newString2 stringByReplacingOccurrencesOfString:@"i" withString:@""];
    NSString *newString4 = [newString3 stringByReplacingOccurrencesOfString:@"o" withString:@""];
    NSString *newString5 = [newString4 stringByReplacingOccurrencesOfString:@"u" withString:@""];
    NSString *newString6 = [newString5 stringByReplacingOccurrencesOfString:@"y" withString:@""];
    NSString *newString7 = [newString6 stringByReplacingOccurrencesOfString:@"A" withString:@""];
    NSString *newString8 = [newString7 stringByReplacingOccurrencesOfString:@"E" withString:@""];
    NSString *newString9 = [newString8 stringByReplacingOccurrencesOfString:@"I" withString:@""];
    NSString *newStringA = [newString9 stringByReplacingOccurrencesOfString:@"O" withString:@""];
    NSString *newStringB = [newStringA stringByReplacingOccurrencesOfString:@"U" withString:@""];
    NSString *newStringC = [newStringB stringByReplacingOccurrencesOfString:@"Y" withString:@""];
    self.inputTextArea.text = newStringC;
    self.numberOfCharacters.text = [NSString stringWithFormat:@"Word count: %i", (int)newStringC.length];
}

-(void)textViewDidChange:(UILabel *)numberOfCharacters {
    NSUInteger len = self.inputTextArea.text.length;
    self.numberOfCharacters.text = [NSString stringWithFormat:@"Word count: %lu", len];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if([text length] == 0)
    {
        if([textView.text length] != 0)
        {
            return YES;
        }
    }
    else if([textView.text length] > 139)
    {
        return NO;
    }
    return YES;
}

- (IBAction)onHashtagButtonTapped:(UIButton *)sender {
    
}


@end
