//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Kajia on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject{
    double operand;
    double tempOperand;
    NSString * tempOperation;
}

-(void)setOperand:(double)anOperand;
-(double)performOperation:(NSString *)operation;

@end
