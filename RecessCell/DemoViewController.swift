//
//  DemoViewController.swift
//  RecessCell
//
//  Created by Andrii Kravchenko on 3/25/16.
//  Copyright © 2016 kievkao. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RecessTableViewCell.identifier(), for: indexPath) as! RecessTableViewCell
        
        if (indexPath as NSIndexPath).row % 2 == 0 {
            cell.setRecessCircle(40, position: CGPoint(x: 10, y: 20))
        }
        else {
            cell.setRecessRect(CGRect(x: 80, y: 20, width: 60, height: 25))
        }
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}
