//
//  projectViewController.swift
//  Timothy Lock
//
//  Created by Timothy Lock on 2015-04-17.
//  Copyright (c) 2015 Timothy Lock. All rights reserved.
//

import UIKit

class projectViewController: UIViewController  {

    @IBOutlet var webProjView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the webpage
        let url = NSURL(string: "http://timothylock.ca/proj/apple/proj.html")
        let request = NSURLRequest(URL: url!)
        webProjView.loadRequest(request)
    }

    @IBAction func doRefresh(AnyObject) {
        // Refresh Webpage
        webProjView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        // Go Back
        webProjView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        // Go forward
        webProjView.goForward()
    }
    
    @IBAction func stop(AnyObject) {
        // Stop Loading
        webProjView.stopLoading()
    }
    
    @IBAction func onBurger() {
        // Open Menu
        (tabBarController as! TabBarController).sidebar.showInViewController(self, animated: true)
    }
    
}


