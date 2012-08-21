//
//  SCZViewController.h
//  SCZDamageHUD
//
//  Created by Peter Suk on 8/20/12.
//  Copyright (c) 2012 StCredZero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+DamageHUD.h"

@interface SCZViewController : UIViewController
{
    UITapGestureRecognizer *tapRecognizer;
}

@property (strong, nonatomic) UITapGestureRecognizer *tapRecognizer;

@end
