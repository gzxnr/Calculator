//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Kajia on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"
#import "ViewController.h"
@implementation CalculatorBrain

-(void)setOperand:(double)anOperand{
    operand = anOperand;
}
-(void)performWatingOperation{
    if([@"+" isEqual:tempOperation]){
        operand = tempOperand + operand;
    }else if([@"-" isEqual:tempOperation]){
        operand = tempOperand - operand;
    }else if([@"*" isEqual:tempOperation]){
        operand = tempOperand * operand;
    }else if([@"/" isEqual:tempOperation]){
        if(operand){
            operand = tempOperand / operand;  
        }
            
    }
}
-(double)performOperation:(NSString *)operation{
    if([operation isEqual:@"sqrt"]){
        if(operand >= 0){
            operand = sqrt(operand);
        }else{
            operand = 0;
        }
        
    }else{
        [self performWatingOperation];
        tempOperation = operation;
        tempOperand = operand;
    }
    return operand;
}

@end
