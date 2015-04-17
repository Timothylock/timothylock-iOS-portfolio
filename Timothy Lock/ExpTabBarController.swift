//
//  ExpTabBarController.swift
//  Timothy Lock
//
//  Created by Timothy Lock on 2015-04-16.
//  Copyright (c) 2015 Timothy Lock. All rights reserved.
//

import UIKit

class ExpTabBarController: UITabBarController, UITabBarControllerDelegate {
	
	var sidebar: FrostedSidebar!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		delegate = self
		tabBar.hidden = false
		
		moreNavigationController.navigationBar.hidden = true
		
	}
	
}
