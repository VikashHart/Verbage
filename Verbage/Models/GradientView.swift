//
//  GradientView.swift
//  Verbage
//
//  Created by C4Q on 5/2/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class GradientView: UIView {
    override class var layerClass: Swift.AnyClass {
        return CAGradientLayer.self
    }
    
    var gradientLayer: CAGradientLayer? { return layer as? CAGradientLayer }
}
