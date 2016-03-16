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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)twitterize:(UIButton *)sender {
    NSString *inputText = self.inputTextArea.text;
    NSUInteger length = inputText.length;
    NSMutableString *twitterText = [NSMutableString string];
    for (int i = 0; i < length; i++) {
        
    }
}

@end
