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
    
    func setRecessCircle(_ radius: CGFloat, position: CGPoint) {
        let maskFrame = CGRect(x: position.x, y: position.y, width: radius, height: radius)
        
        self.maskShapeLayer.frame = self.bounds
        self.maskShapeLayer.fillRule = kCAFillRuleEvenOdd
        
        let pathRef = CGMutablePath()
        
        pathRef.addRect(self.bounds)
        pathRef.addEllipse(in: maskFrame)
        
        self.maskShapeLayer.path = pathRef
        self.layer.mask = maskShapeLayer
    }
    
    func setRecessRect(_ frame: CGRect) {
        self.maskShapeLayer.fillRule = kCAFillRuleEvenOdd
        
        let pathRef = CGMutablePath()
        
        pathRef.addRect(self.bounds)
        pathRef.addRect(frame)

        self.maskShapeLayer.path = pathRef

        self.layer.mask = self.maskShapeLayer
    }
}
