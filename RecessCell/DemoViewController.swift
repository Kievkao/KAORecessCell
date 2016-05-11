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
        let cell = tableView.dequeueReusableCellWithIdentifier("recessCell", forIndexPath: indexPath) as! RecessTableViewCell
        
        if indexPath.row % 2 == 0 {
            cell.setRecessCircle(20, position: CGPoint(x: 10, y: 10))
        }
        else {
            cell.setRecessRect(CGRect(x: 20, y: 10, width: 20, height: 20))
        }
        
        return cell
    }
}
