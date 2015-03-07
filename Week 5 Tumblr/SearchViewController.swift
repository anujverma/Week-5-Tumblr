//
//  SearchViewController.swift
//  Week 5 Tumblr
//
//  Created by Anuj Verma on 3/3/15.
//  Copyright (c) 2015 Anuj Verma. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var loadingImage: UIImageView!
    
    @IBOutlet weak var searchFeed: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        println("View did load")
        // Do any additional setup after loading the view.
        searchFeed.alpha = 0

    }
    
    override func viewDidAppear(animated: Bool) {
        println("View did appear")
        searchFeed.alpha = 0
        loadingImage.hidden = false
        var images = UIImage.animatedImageNamed("loading-", duration: 0.7)
        loadingImage.image = images
        
        UIView.animateWithDuration(0.3, delay: 2, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.searchFeed.alpha = 1
            }) { (Bool) -> Void in
                self.loadingImage.hidden = true
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
