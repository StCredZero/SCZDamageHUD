//
//  UILabel+DamageHUD.m
//  DamageHUD
//
//  Created by Peter Suk on 8/20/12.
//  Copyright (c) 2012 StCredZero. All rights reserved.
//

#import "UIView+DamageHUD.h"

@implementation UIView (DamageHUD)

- (void) showDamageHUD:(UIView*)hudView
              duration:(NSTimeInterval)duration
            moveVector:(CGPoint)moveVector
{
    UIViewAnimationOptions options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionTransitionNone;
    NSTimeInterval delay = 0.0;
    
    [self showDamageHUD:hudView
               duration:duration
                  delay:delay
                options:options
             moveVector:moveVector];
}

- (void) showDamageHUD:(UIView*)hudView
              duration:(NSTimeInterval)duration
                 delay:(NSTimeInterval)delay
               options:(UIViewAnimationOptions)options
            moveVector:(CGPoint)moveVector
{
    CGPoint endPoint = CGPointMake(hudView.center.x + moveVector.x, hudView.center.y + moveVector.y);
    
    [self showDamageHUD:hudView
               duration:duration
                  delay:delay
                options:options
             animations:^{
                 hudView.center = endPoint;
                 hudView.alpha = 0.0;
             }
             moveVector:moveVector];
}

- (void) showDamageHUD:(UIView*)hudView
              duration:(NSTimeInterval)duration
                 delay:(NSTimeInterval)delay
               options:(UIViewAnimationOptions)options
            animations:(void (^)(void))animations
            moveVector:(CGPoint)moveVector
{
    [self showDamageHUD:hudView
               duration:duration
                  delay:delay
                options:options
             animations:animations
             completion:^ (BOOL finished) {
                 if (finished) {
                     [hudView removeFromSuperview];
                 }
             }
             moveVector:moveVector];
}

- (void) showDamageHUD:(UIView*)hudView
              duration:(NSTimeInterval)duration
                 delay:(NSTimeInterval)delay
               options:(UIViewAnimationOptions)options
            animations:(void (^)(void))animations
            completion:(void (^)(BOOL))completion
            moveVector:(CGPoint)moveVector
{
    hudView.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    hudView.hidden = NO;
    
    [self addSubview:hudView];
    
    [UIView animateWithDuration:duration
                          delay:delay
                        options:options
                     animations:animations
                     completion:completion];
}

@end
