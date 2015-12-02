//
//  MGViewController.m
//  MGMatrix
//
//  Created by Mohamed GHENANIA on 12/02/2015.
//  Copyright (c) 2015 Mohamed GHENANIA. All rights reserved.
//

#import "MGViewController.h"
#import "MGMatrix.h"

@interface MGViewController ()

@end

@implementation MGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self playWithMatrixes];
}

- (void) playWithMatrixes
{
    MGMatrix* A = [MGMatrix rows:2 columns:2 values:
                   1.0,   2.0,
                   3.0,   4.0
                   ];
    MGMatrix* B = [[MGMatrix identity:2] scaleBy:5.];
    MGMatrix* C = [[A transpose] scaleBy:-1.5];
    
    // A
    [A prettyLogWithName:@"A"];
    // A^T
    [[A transpose] prettyLogWithName:@"A^T"];
    // A^-1
    [[A invert] prettyLogWithName:@"A^-1"];
    // A * A^-1
    [[A multiplyByInverseOf:A] prettyLogWithName:@"A * A^-1"];
    // B
    [B prettyLogWithName:@"B"];
    // A + B
    [[A plus:B] prettyLogWithName:@"A + B"];
    // A - B
    [[A minus:B] prettyLogWithName:@"A - B"];
    // A * B
    [[A multiplyBy:B] prettyLogWithName:@"A * B"];
    // A * B^T
    [[A multiplyByTransposeOf:B] prettyLogWithName:@"A * B^T"];
    // A * B^-1
    [[A multiplyByInverseOf:B] prettyLogWithName:@"A * B^-1"];
    // 3*A + B
    [[A scaleBy:3.0 plus:B] prettyLogWithName:@"3*A + B"];
    // C
    [C prettyLogWithName:@"C"];
    // A * B + C
    [[A multiplyBy:B plus:C] prettyLogWithName:@"A * B + C"];
    // A * B - C
    [[A multiplyBy:B minus:C] prettyLogWithName:@"A * B - C"];
    
}

@end
