//
//  SCZViewController.m
//  SCZDamageHUD
//
//  Created by Peter Suk on 8/20/12.
//  Copyright (c) 2012 StCredZero. All rights reserved.
//

#import "SCZViewController.h"

@interface SCZViewController ()

@end

@implementation SCZViewController

@synthesize tapRecognizer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                 action:@selector(handleTapFrom:)];
    [self.view addGestureRecognizer:self.tapRecognizer];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Events

- (void)handleTapFrom:(id)sender
{
    UITapGestureRecognizer *recognizer = sender;
    CGPoint point = [recognizer locationInView:[self view]];
    NSLog(@"Tap - location: %f,%f", point.x, point.y);
    
    UILabel *damageLabel = [[UILabel alloc]  initWithFrame:CGRectMake(0, 0, 50.0, 20.0) ];
    damageLabel.text = @"50";
    damageLabel.textColor = [UIColor yellowColor];
    damageLabel.center = point;
    damageLabel.textAlignment = UITextAlignmentCenter;
    [self.view showDamageHUD:damageLabel
                    duration:1.5
                  moveVector:CGPointMake(0,-75)];
}


@end
