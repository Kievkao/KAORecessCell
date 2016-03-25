//
//  RecessTableViewCell.swift
//  RecessTest
//
//  Created by Andrii Kravchenko on 3/25/16.
//  Copyright © 2016 kievkao. All rights reserved.
//

import UIKit

class RecessTableViewCell: UITableViewCell {

    var maskLayer: CAShapeLayer?
    
    func setRecessCircle(radius: CGFloat, position: CGPoint) {
        let maskFrame = CGRectMake(position.x, position.y, radius, radius)
        
        self.maskLayer = CAShapeLayer()
        self.maskLayer!.frame = self.bounds
        self.maskLayer!.fillRule = kCAFillRuleEvenOdd
        
        let pathRef = CGPathCreateMutable()
        CGPathAddRect(pathRef, nil, self.bounds)
        CGPathAddEllipseInRect(pathRef, nil, maskFrame)
        
        self.maskLayer!.path = pathRef
        
        self.layer.mask = maskLayer
        
    }
}
