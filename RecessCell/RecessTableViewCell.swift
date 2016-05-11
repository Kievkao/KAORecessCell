//
//  RecessTableViewCell.swift
//  RecessTest
//
//  Created by Andrii Kravchenko on 3/25/16.
//  Copyright © 2016 kievkao. All rights reserved.
//

import UIKit

class RecessTableViewCell: UITableViewCell {

    var maskShapeLayer: CAShapeLayer?
    var maskLayer: CALayer?
    
    func setRecessCircle(radius: CGFloat, position: CGPoint) {
        let maskFrame = CGRectMake(position.x, position.y, radius, radius)
        
        self.maskShapeLayer = CAShapeLayer()
        self.maskShapeLayer!.frame = self.bounds
        self.maskShapeLayer!.fillRule = kCAFillRuleEvenOdd
        
        let pathRef = CGPathCreateMutable()
        CGPathAddRect(pathRef, nil, self.bounds)
        CGPathAddEllipseInRect(pathRef, nil, maskFrame)
        
        self.maskShapeLayer!.path = pathRef
        self.layer.mask = maskShapeLayer
    }
    
    func setRecessRect(frame: CGRect) {
        self.maskLayer = CALayer()
        self.maskLayer!.frame = self.bounds
        self.maskLayer?.backgroundColor = UIColor.redColor().CGColor
        self.layer.mask = maskLayer
    }
}
