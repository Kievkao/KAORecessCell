//
//  RecessTableViewCell.swift
//  RecessTest
//
//  Created by Andrii Kravchenko on 3/25/16.
//  Copyright © 2016 kievkao. All rights reserved.
//

import UIKit

class RecessTableViewCell: UITableViewCell {

    var maskShapeLayer: CAShapeLayer = CAShapeLayer()

    static func identifier() -> String {
        return "recessCell"
    }
    
    func setRecessCircle(radius: CGFloat, position: CGPoint) {
        let maskFrame = CGRectMake(position.x, position.y, radius, radius)
        
        self.maskShapeLayer.frame = self.bounds
        self.maskShapeLayer.fillRule = kCAFillRuleEvenOdd
        
        let pathRef = CGPathCreateMutable()
        CGPathAddRect(pathRef, nil, self.bounds)
        CGPathAddEllipseInRect(pathRef, nil, maskFrame)
        
        self.maskShapeLayer.path = pathRef
        self.layer.mask = maskShapeLayer
    }
    
    func setRecessRect(frame: CGRect) {
        self.maskShapeLayer.fillRule = kCAFillRuleEvenOdd
        
        let pathRef = CGPathCreateMutable()
        CGPathAddRect(pathRef, nil, self.bounds)
        CGPathAddRect(pathRef, nil, frame)

        self.maskShapeLayer.path = pathRef

        self.layer.mask = self.maskShapeLayer
    }
}
