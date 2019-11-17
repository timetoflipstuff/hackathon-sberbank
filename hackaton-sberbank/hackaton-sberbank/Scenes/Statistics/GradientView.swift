//
//  GradientView.swift
//  StatisticsForSber
//
//  Created by Алексей ]Чанов on 16/11/2019.
//  Copyright © 2019 Алексей Чанов. All rights reserved.
//

import UIKit


final class GradientView: UIView {
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    var gradientLayer: CAGradientLayer {
        return layer as? CAGradientLayer ?? CAGradientLayer()
    }
}

extension GradientView {
    public func animateGradient() {
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.0)
        let colors:[UIColor] = [UIColor.pureGreen, #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
        gradientLayer.colors = colors.map({ (color) in
            color.cgColor
        })
        let locations: [NSNumber] = [1,1,1]
        gradientLayer.locations = locations
        let gradientAnimation = CABasicAnimation(keyPath: "locations")
        gradientAnimation.fromValue = [0.0, 0.0, 0.25]
        gradientAnimation.toValue = [0.75, 1, 1]
        gradientAnimation.duration = 3
        gradientAnimation.repeatCount = 1
        gradientLayer.add(gradientAnimation, forKey: nil)
    }
    
    public func firstCellanimateGradient() {
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.0)
        let colors:[UIColor] = [#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1),#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
        gradientLayer.colors = colors.map({ (color) in
            color.cgColor
        })
        let locations: [NSNumber] = [1,1,1]
        gradientLayer.locations = locations
        let gradientAnimation = CABasicAnimation(keyPath: "locations")
        gradientAnimation.fromValue = [0.0, 0.0, 0.25]
        gradientAnimation.toValue = [0.75, 1, 1]
        gradientAnimation.duration = 3
        gradientAnimation.repeatCount = 1
        gradientLayer.add(gradientAnimation, forKey: nil)
    }
}

