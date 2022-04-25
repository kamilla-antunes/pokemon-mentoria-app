//
//  TextField.swift
//  pokemon-mentoria-app
//
//  Created by kamilla.antunes on 22/04/22.
//

import UIKit

class TextField: UITextField {

    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(textPlaceholder: String) {
        super.init(frame: .zero)
        configure(with: textPlaceholder)
    }
    
    @objc func tappedTextField() {
        self.layer.borderColor = .borderTextFieldColor
    }
    
    @objc func untappedTextField() {
        self.layer.borderColor = .none
    }
    
    func configure(with textPlaceholder: String) {
        self.backgroundColor = .backgroundTextFieldColor
        self.placeholder = textPlaceholder
        self.textColor = .textFieldColor
        self.borderStyle = .roundedRect
        self.font = .josefinSansFontParagraph
        self.autocapitalizationType = .none
        self.autocorrectionType = .no
        self.addTarget(self, action: #selector(self.tappedTextField), for: .touchUpInside)
        self.addTarget(self, action: #selector(self.untappedTextField), for: .touchUpOutside)
    }

}
