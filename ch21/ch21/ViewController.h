//
//  ViewController.h
//  ch21
//
//  Created by Shuieryin on 4/4/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController

@property(strong, nonatomic) IBOutlet UILabel *display;

- (void)processDigit:(int)digit;

- (void)processOp:(char)theOp;

- (void)storeFracPart;

// Numeric keys

- (IBAction) clickDigit:(UIButton *)sender;

// Arithmetic Operation keys
- (IBAction) clickPlus;

- (IBAction) clickMinus;

- (IBAction) clickMultiply;

- (IBAction)clickDivide;

// Misc. Keys
- (IBAction)clickOver;

- (IBAction)clickEquals;

- (IBAction)clickClear;

@end
