//
//  ComposeViewController.swift
//  Week 5 Tumblr
//
//  Created by Anuj Verma on 3/3/15.
//  Copyright (c) 2015 Anuj Verma. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {

    
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var nevermindButton: UIButton!
    @IBOutlet weak var backgroundBlueView: UIView!
    
    var isPresenting: Bool = true
    
    var originalCenterY: CGFloat! = 620

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        println(view.center.y)
        println("Center y of textButton: \(textButton.center.y)")
        println("Center y of linkButton: \(linkButton.center.y)")
        println("Center y of nevermindButton: \(nevermindButton.center.y)")
        backgroundBlueView.alpha = 0.9
        textButton.center.y = originalCenterY
        photoButton.center.y = originalCenterY
        quoteButton.center.y = originalCenterY
        linkButton.center.y = originalCenterY
        chatButton.center.y = originalCenterY
        videoButton.center.y = originalCenterY
        nevermindButton.center.y = originalCenterY
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func viewDidAppear(animated: Bool) {
        //
        
        UIView.animateWithDuration(0.4, delay: 0.5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.nevermindButton.center.y = 541.5
        }) { (Bool) -> Void in
            //
        }
        
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.photoButton.center.y = 195.5
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.textButton.center.y = 195.5
        }) { (Bool) -> Void in
            //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.3, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.quoteButton.center.y = 195.5
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.chatButton.center.y = 298.5
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.5, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.linkButton.center.y = 298.5
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.6, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.videoButton.center.y = 298.5
            }) { (Bool) -> Void in
                //
        }

        
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.photoButton.center.y = -30
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.textButton.center.y = -30
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.quoteButton.center.y = -30
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.3, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.chatButton.center.y = -30
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.linkButton.center.y = -30
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.4, delay: 0.5, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.videoButton.center.y = -30
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(0.8, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 5, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            self.nevermindButton.center.y = self.originalCenterY
            }) { (Bool) -> Void in
                //
        }
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

    
    @IBAction func didTapNevermindButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func animationControllerForPresentedController(presented: UIViewController!, presentingController presenting: UIViewController!, sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = true
        return self
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = false
        return self
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        // The value here should be the duration of the animations scheduled in the animationTransition method
        return 0.4
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        println("animating transition")
        var containerView = transitionContext.containerView()
        var toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        var fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        
        if (isPresenting) {
            containerView.addSubview(toViewController.view)
            toViewController.view.alpha = 0
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                toViewController.view.alpha = 1
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
            }
        } else {
            UIView.animateWithDuration(0.4, delay: 0.5, options: nil, animations: { () -> Void in
                fromViewController.view.alpha = 0
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
                    fromViewController.view.removeFromSuperview()
            }
        }
    }

}
