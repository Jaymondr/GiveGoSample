//
//  ButtonStyles.swift
//  GiveGoSample
//
//  Created by Jaymond Richardson on 5/3/22.
//

import UIKit

extension UIView {
    
    func addCornerRadius(_ radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
    }
    
    func addRoundedCorner(_ radius: CGFloat = 5) {
        self.layer.cornerRadius = radius
    }
}
