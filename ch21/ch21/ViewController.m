//
//  ViewController.m
//  ch21
//
//  Created by Shuieryin on 4/4/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//


#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController {
    char op;
    int currentNumber;
    BOOL firstOperand, isNumerator;
    Calculator *myCalculator;
    NSMutableString *displayString;
}

@synthesize display;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    firstOperand = YES;
    isNumerator = YES;
    displayString = [NSMutableString stringWithCapacity:40];
    myCalculator = [[Calculator alloc] init];
    display.text = @"0";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)processDigit:(int)digit {
    currentNumber = currentNumber * 10 + digit;
    if ([displayString isEqual:@"0"]) {
        displayString = [NSMutableString stringWithString:@""];
    }
    [displayString appendString:[NSString stringWithFormat:@"%i", digit]];
    display.text = displayString;
}

- (IBAction)clickDigit:(UIButton *)sender {
    int digit = sender.tag;
    [self processDigit:digit];
}

- (void)processOp:(char)theOp {
    NSString *opStr;
    op = theOp;

    switch (theOp) {
        case '+':
            opStr = @" + ";
            break;
        case '-':
            opStr = @" - ";
            break;
        case '*':
            opStr = @" x ";
            break;
        case '/':
            opStr = @" ÷ ";
            break;
    }

    [self storeFracPart];
    firstOperand = NO;
    isNumerator = YES;

    [displayString appendString:opStr];
    display.text = displayString;
}

- (void)storeFracPart {
    if (firstOperand) {
        if (isNumerator) {
            myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1; // e.g. 3 * 4 / 5 =
        } else {
            myCalculator.operand1.denominator = currentNumber;
        }
    } else if (isNumerator) {
        myCalculator.operand2.numerator = currentNumber;
        myCalculator.operand2.denominator = 1; // e.g. 3 / 2 * 4 =
    } else {
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }

    currentNumber = 0;
}

- (IBAction)clickOver {
    [self storeFracPart];
    isNumerator = NO;
    [displayString appendString:@"/"];
    display.text = displayString;
}

// Arithmetic Operation keys
- (IBAction) clickPlus {
    [self processOp:'+'];
}

- (IBAction)clickMinus {
    [self processOp:'-'];
}

- (IBAction)clickMultiply {
    [self processOp:'*'];
}

- (IBAction)clickDivide {
    [self processOp:'/'];
}

// Misc. Keys
- (IBAction)clickEquals {
    if (!firstOperand) {
        [self storeFracPart];
        [myCalculator performOperation:op];

        display.text = [myCalculator.accumulator convertToString];

        currentNumber = 0;
        isNumerator = YES;
        firstOperand = YES;
        [displayString setString:display.text];
    }
}

- (IBAction) clickClear {
    isNumerator = YES;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];

    [displayString setString:@"0"];
    display.text = displayString;
}

@end