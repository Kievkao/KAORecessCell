//
//  DemoViewController.swift
//  RecessCell
//
//  Created by Andrii Kravchenko on 3/25/16.
//  Copyright © 2016 kievkao. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(RecessTableViewCell.identifier(), forIndexPath: indexPath) as! RecessTableViewCell
        
        if indexPath.row % 2 == 0 {
            cell.setRecessCircle(30, position: CGPoint(x: 10, y: 5))
        }
        else {
            cell.setRecessRect(CGRect(x: 80, y: 10, width: 60, height: 25))
        }
        
        return cell
    }
}
