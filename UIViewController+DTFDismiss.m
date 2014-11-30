//
//  UIViewController+DTFDismiss.m
//  DTFViewControllerDismiss
//
//  Created by Darren Ferguson on 11/30/14.
//  Copyright (c) 2014 Darren Ferguson. All rights reserved.
//

#import "UIViewController+DTFDismiss.h"

// NSObject Dismiss Animate imports
#import "NSObject+DTFDismissAnimate.h"

@implementation UIViewController (DTFDismiss)

/**
 * Method on the UIViewController that will dismiss the view controller
 *
 * @param 'sender' Any object supporting this functionality UIButton, UIBarButtonItem etc...
 */
- (IBAction)dtf_dismissViewController:(id)sender
{
    [self dismissViewControllerAnimated:[self shouldAnimateForSender:sender] completion:nil];
}

/**
 * Method on the UIViewController that will pop the view controller inside a navigation controller
 *
 * @param 'sender' Any object supporting this functionality UIButton, UIBarButtonItem etc...
 */
- (IBAction)dtf_popViewController:(id)sender
{
    [self.navigationController popViewControllerAnimated:[self shouldAnimateForSender:sender]];
}

/**
 * Method on the UIViewController that will pop the view controller to the root
 * View Controller of the navigation controller
 *
 * @param 'sender' Any object supporting this functionality UIButton, UIBarButtonItem etc...
 */
- (IBAction)dtf_popToRootViewController:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:[self shouldAnimateForSender:sender]];
}

# pragma mark - Private instance methods (PRIVATE)

- (BOOL)shouldAnimateForSender:(id)sender
{
    if ([sender respondsToSelector:@selector(dtfDismissAnimate)]) {
        return [sender performSelector:@selector(dtfDismissAnimate)];
    }
    return NO;
}

@end
