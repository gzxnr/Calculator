//
//  ViewController.h
//  gzxnr
//
//  Created by Kajia on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface ViewController : UIViewController{
    IBOutlet UILabel *display;
    CalculatorBrain *brain;
    BOOL typingNambers;
}

-(IBAction)digitPressed:(UIButton *)sender;

-(IBAction)operationPressed:(UIButton *)sender;

@end
