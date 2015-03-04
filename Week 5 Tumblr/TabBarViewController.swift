//
//  TabBarViewController.swift
//  Week 5 Tumblr
//
//  Created by Anuj Verma on 3/3/15.
//  Copyright (c) 2015 Anuj Verma. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    var currentViewController: UIViewController!
    var homeViewController: HomeViewController!
    var searchVewController: SearchViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeStory") as HomeViewController
        
        searchVewController = storyboard.instantiateViewControllerWithIdentifier("searchStory") as SearchViewController
        
        currentViewController = homeViewController
        didTapHomeButton(self)
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

    @IBAction func didTapHomeButton(sender: AnyObject) {
        removeChildViews(currentViewController)
        addChildViewController(homeViewController)
        var homeView = homeViewController.view
        homeView.frame = contentView.frame
        contentView.addSubview(homeView)
        homeViewController.didMoveToParentViewController(self)
        currentViewController = homeViewController
    }
    @IBAction func didTapSearchButton(sender: AnyObject) {
        removeChildViews(currentViewController)
        addChildViewController(searchVewController)
        var searchView = searchVewController.view
        searchView.frame = contentView.frame
        contentView.addSubview(searchView)
        searchVewController.didMoveToParentViewController(self)
        currentViewController = searchVewController
    }
    
    func removeChildViews(content: UIViewController){
        content.willMoveToParentViewController(nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
    }
    
//    func updateActiveViewController
}
