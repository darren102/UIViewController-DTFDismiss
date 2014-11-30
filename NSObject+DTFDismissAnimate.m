//
//  NSObject+DTFDismissAnimate.m
//  DTFViewControllerDismiss
//
//  Created by Darren Ferguson on 11/30/14.
//  Copyright (c) 2014 Darren Ferguson. All rights reserved.
//

#import <objc/runtime.h>
#import "NSObject+DTFDismissAnimate.h"

static const void *kDTFDismissAnimateKey = &kDTFDismissAnimateKey;

@implementation NSObject (DTFDismissAnimate)

- (void)setDtfDismissAnimate:(BOOL)dtfDismissAnimate
{
    objc_setAssociatedObject(self, kDTFDismissAnimateKey, @(dtfDismissAnimate), OBJC_ASSOCIATION_RETAIN);
}

- (BOOL)dtfDismissAnimate
{
    NSNumber *associated = objc_getAssociatedObject(self, kDTFDismissAnimateKey);
    return associated ? [associated boolValue] : NO;
}

@end
