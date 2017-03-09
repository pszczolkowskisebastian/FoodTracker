//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Sebastian Pszczółkowski on 09.03.2017.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //MARK: Initialization
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        setupButtons()
        
    }
    
    required init(coder: NSCoder) {
        
        super.init(coder: coder)
        
        setupButtons()
        
    }
    
    //MARK: Private Metods
    
    private func setupButtons() {
    
        // Create button
        
        let button = UIButton()
        
        button.backgroundColor = UIColor.red
        
        // Button constraints
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Add the button to the stack
        
        addArrangedSubview(button)
        
        
    }
    
}
