//
//  UIColor+RandColor.m
//  Lecture7
//
//  Created by 2 on 2/2/16.
//  Copyright © 2016 123. All rights reserved.
//

#import "UIColor+RandColor.h"

@implementation UIColor (RandColor)

+(UIColor*)random{
    
   UIColor *color= [[UIColor alloc] initWithRed:arc4random_uniform(255)/255.f  green:arc4random_uniform(255)/255.f blue:arc4random_uniform(255)/255.f  alpha:1];
    
    return color;
}

@end
