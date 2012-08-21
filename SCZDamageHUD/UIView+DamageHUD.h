//
//  DamageHUD.h
//  DamageHUD
//
//  Created by Peter Suk on 8/20/12.
//  Copyright (c) 2012 StCredZero. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (DamageHUD)

- (void)showDamageHUD:(UIView*)hudView
             duration:(NSTimeInterval)duration
           moveVector:(CGPoint)moveVector;

- (void)showDamageHUD:(UIView*)hudView
             duration:(NSTimeInterval)duration
                delay:(NSTimeInterval)delay
              options:(UIViewAnimationOptions)options
           moveVector:(CGPoint)moveVector;

- (void) showDamageHUD:(UIView*)hudView
              duration:(NSTimeInterval)duration
                 delay:(NSTimeInterval)delay
               options:(UIViewAnimationOptions)options
            animations:(void (^)(void))animations
            moveVector:(CGPoint)moveVector;

- (void) showDamageHUD:(UIView*)hudView
              duration:(NSTimeInterval)duration
                 delay:(NSTimeInterval)delay
               options:(UIViewAnimationOptions)options
            animations:(void (^)(void))animations
            completion:(void (^)(BOOL))completion
            moveVector:(CGPoint)moveVector;

@end

