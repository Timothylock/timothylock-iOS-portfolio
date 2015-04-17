//
//  WebViewController.swift
//  Timothy Lock
//
//  Created by Timothy Lock on 2015-04-17.
//  Copyright (c) 2015 Timothy Lock. All rights reserved.
//

import UIKit

class WebViewController: UIViewController  {
    
    @IBOutlet var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://timothylock.ca/#connect")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
    
    @IBAction func onBurger() {
        (tabBarController as! TabBarController).sidebar.showInViewController(self, animated: true)
    }
    
}


