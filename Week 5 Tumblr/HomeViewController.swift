//
//  HomeViewController.swift
//  Week 5 Tumblr
//
//  Created by Anuj Verma on 3/3/15.
//  Copyright (c) 2015 Anuj Verma. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeSpinnerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UIView.animateWithDuration(10.0, delay: 0, options: UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseIn | UIViewAnimationOptions.CurveEaseOut | UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //
            var rotate = CGFloat(180 * M_PI/180)
            self.homeSpinnerImage.transform = CGAffineTransformRotate(self.homeSpinnerImage.transform, rotate)
            }) { (Bool) -> Void in
                //
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
