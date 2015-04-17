//
//  ViewController.swift
//  CustomStuff
//
//  Created by Evan Dekhayser on 7/9/14.
//  Copyright (c) 2014 Evan Dekhayser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let awardsTitleArray = ["Queens Venturer Award (Govenor General of Canada)", "MHacks Apple Hardware Sponsor Prize (Apple)", "Medal of Maple for Distinguished Youth Service", "Waterloo Computing Award", "UOIT Robotics Winner Award", "Lieutenant Govenor Volunteer Award", "Leadership in Training Certificate", "Ontario Scholar Certificate", "Honor Roll"]
    
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func onBurger() {
        var alert = UIAlertController(title: "Queens Venturer Award", message: "Long text that is super long and idk what i am typing becuase it is so long and idk what else to say. SUper SUper Long. 2012", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Awesome!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        (tabBarController as! TabBarController).sidebar.showInViewController(self, animated: true)
    }
    
    func tableView(tableVIew: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.awardsTitleArray.count;
    }
    
    func tableView(tableView: UITableView!,
        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
        cell.textLabel!.text = awardsTitleArray[indexPath.row]
        
        return cell
    }
}

