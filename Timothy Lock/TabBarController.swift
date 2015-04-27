//
//  TabBarController.swift
//  Timothy Lock
//
//  Created by Timothy Lock on 2015-04-16.
//  Copyright (c) 2015 Timothy Lock. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
	
	var sidebar: FrostedSidebar!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		delegate = self
		tabBar.hidden = true
		
		moreNavigationController.navigationBar.hidden = true
		
		sidebar = FrostedSidebar(itemImages: [
			UIImage(named: "homepage")!,
			UIImage(named: "projects")!,
			UIImage(named: "awards")!,
			UIImage(named: "education")!,
			UIImage(named: "connect")!],
			colors: [
				UIColor(red: 240/255, green: 159/255, blue: 254/255, alpha: 1),
				UIColor(red: 255/255, green: 137/255, blue: 167/255, alpha: 1),
				UIColor(red: 126/255, green: 242/255, blue: 195/255, alpha: 1),
				UIColor(red: 056/255, green: 056/255, blue: 056/255, alpha: 1),
				UIColor(red: 137/255, green: 173/255, blue: 217/255, alpha: 1)],
			selectedItemIndices: NSIndexSet(index: 0))
		
		sidebar.isSingleSelect = true
		sidebar.actionForIndex = [
			0: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 0}) },
			1: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 1}) },
			2: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 2}) },
			3: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 3}) },
			4: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 4}) },
			5: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 5}) }]
	}
	
}
