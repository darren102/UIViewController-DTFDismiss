UIViewController-DTFDismiss
===========================

UIViewController-DTFDismiss is a category on UIViewController to allow dismissing or popping view controllers without continually writing the same code in each UIViewController you wish the functionality.

The category exposes 3 IBAction instance methods that allow tying in directly from the Storyboard file without having to continually write the same method. There is also a helper category on NSObject called NSObject+DTFDismissAnimate.
This helper category allows you to specify within the storyboard whether you wish the dismissing or popping of the view controllers to occur with an animation or without an animation.

### Maintainers

- [Darren Ferguson](http://github.com/darren102) ([@darren102](https://twitter.com/darren102))
