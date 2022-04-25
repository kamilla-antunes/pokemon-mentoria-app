//
//  Container.swift
//  pokemon-mentoria-app
//
//  Created by kamilla.antunes on 22/04/22.
//

import UIKit

class Container: UIView {

    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init() {
        super.init(frame: .zero)
        configure()
    }
    
    func configure() {
        self.backgroundColor = .containerBackgroundColor
        self.layer.cornerRadius = 40
    }
}
