//
//  ViewController.swift
//  Timothy Lock
//
//  Created by Timothy Lock on 2015-04-16.
//  Copyright (c) 2015 Timothy Lock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let awardsTitleArray = ["Queens Venturer Award (Govenor General of Canada)", "MHacks Apple Hardware Sponsor Prize (Apple)", "Medal of Maple for Distinguished Youth Service", "Waterloo Computing Award", "UOIT Robotics Winner Award", "Lieutenant Govenor Volunteer Award", "Leadership in Training Certificate", "Ontario Scholar Certificate", "Honor Roll"]
    let awardsDesc = ["Governor General of Canada. 2015 – The highest Scouting proficiency award for youth members in Scouts Canada.", "MHacks. 2015 – Best Hardware Hack sponsored by Apple.", "Scouts Canada. 2015 – Significantly contributed to the spirit of Scouting through community service, extraordinary Scouting participation and a solid system of personal values.", "University of Waterloo. 2014 – For top score in the Waterloo Canadian Computing Competition.", "University of Ontario Institute of Technology. 2014 – For top score in the UOIT Robotics Competition.", "University of Ontario Institute of Technology. 2014 – For top score in the UOIT Robotics Competition. ", "Town of Markham. 2011 – For the completion of the LIT course.", "Town of Markham. 2011 – For the completion of the LIT course.", "St. Augustine Catholic High School. 2011-2013 – Foroutstanding academic average (GPA 80% or higher)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
	@IBAction func onBurger() {
        (tabBarController as! TabBarController).sidebar.showInViewController(self, animated: true)
    }
    
    func tableView(tableVIew: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.awardsTitleArray.count;
    }
    
    func tableView(tableView: UITableView!,
        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        // Populate the table
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
        cell.textLabel!.text = awardsTitleArray[indexPath.row]
        
        return cell
    }
    
    
    func tableView(tableView: UITableView!,
        didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        // Display details when item is selected from table
        var alert = UIAlertController(title: awardsTitleArray[indexPath.row], message: awardsDesc[indexPath.row], preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

