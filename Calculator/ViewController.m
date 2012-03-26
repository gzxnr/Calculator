//
//  ViewController.m
//  gzxnr
//
//  Created by Kajia on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
-(CalculatorBrain *) brain{
    if(!brain){
        brain = [[CalculatorBrain alloc] init];
    }
    return brain;
}

-(IBAction)digitPressed:(UIButton *)sender{
    NSString * digit = [[sender titleLabel]text];
    if(typingNambers){
        [display setText:[[display text] stringByAppendingString: digit]]; 
    }else{
        //NSLog(@"%@", digit);
        [display setText: digit];
        //NSLog(@"%@", display.text);
        typingNambers = YES;
    }
   
}

-(IBAction)operationPressed:(UIButton *)sender{
    if(typingNambers){
        [[self brain]setOperand:[[display text] doubleValue]];
        typingNambers = NO;
    }
    NSString * operation = [[sender titleLabel] text];
    if([operation isEqual:@"c"]){
        typingNambers = NO;
        [display setText: @"0"];
        //[display setText: @"0"];
        //NSLog(@"%@", display.text);
        //[display setText: [NSString stringWithFormat:@"%d",0]];
    }else{
        double result = [[self brain] performOperation:operation];
        [display setText:[NSString stringWithFormat:@"%g",result]];
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
