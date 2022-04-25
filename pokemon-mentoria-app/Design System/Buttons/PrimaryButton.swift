//
//  PrimaryButtonController.swift
//  pokemon-mentoria-app
//
//  Created by kamilla.antunes on 02/02/22.
//

import UIKit

enum ButtonTypes {
    case primary
    case secondary
}

class PrimaryButton: UIButton {
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(type: ButtonTypes) {
        super.init(frame: .zero)
        configure(using: type)
    }
    
    @objc func tappedButton() {
        self.isEnabled = false
    }
    
    func configure(using type: ButtonTypes) {
        self.setBackgroundImage(UIImage.init(imageLiteralResourceName: "disabled-button"), for: .disabled)
        self.setTitleColor(.white, for: .disabled)
        self.titleLabel?.font = UIFont(name: "Oswald", size: 18)
        //self.addTarget(self, action: #selector(self.tappedButton), for: .touchUpInside)
        
        switch type {
        case .primary:
            self.setBackgroundImage(UIImage.init(imageLiteralResourceName: "primary-button"), for: .normal)
            self.setTitle("Text", for: .normal)
        case .secondary:
            self.setBackgroundImage(UIImage.init(imageLiteralResourceName: "secondary-button"), for: .normal)
            self.setTitle("Text", for: .normal)
            self.setTitleColor(.systemPink, for: .normal)
        }
    }
    
}

// Retirar o Controller do nome da classe, pois gerencia-se apenas a view do botao - OK
// Mudar arquivo para pasta da view - OK
// Estudar documentação de UIButton, fazer a classe herdar direto o button - OK
// Criar um enum de todos os tipos de botões que terá na aplicação - OK
// Arrumar questão do Assets - OK
// Desafio: Carregar a imagem do Assets e carregar na viewController apenas por código - OK

// Tirar imageview e colocar o botao - OK
// Colocar os botoes nos dois estados - OK
// Adicionar tratamento para o toque no botao: Quando clicar em qualquer um, ele ficara desativado e quando estiver desabilitado ele ficara exatamente no estado desabilitado do figma - OK
