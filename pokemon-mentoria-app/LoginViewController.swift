//
//  LoginViewController.swift
//  pokemon-mentoria-app
//
//  Created by kamilla.antunes on 21/04/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let pokemonLogoImage: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(imageLiteralResourceName: "logo-pokemon")
        
        return image
    }()
    
    private var userTextField: UITextField = {
        let textField = UITextField()
        
        textField.backgroundColor = .backgroundTextFieldColor
        textField.placeholder = "Usuário"
        textField.textColor = .textFieldColor
        
        return textField
    }()
    
    func setUpConstraint() {
        view.backgroundColor = .white
        view.addSubview(pokemonLogoImage)
        view.addSubview(userTextField)
        
        pokemonLogoImage.translatesAutoresizingMaskIntoConstraints = false
        userTextField.translatesAutoresizingMaskIntoConstraints = false
        
        pokemonLogoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        pokemonLogoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        userTextField.topAnchor.constraint(equalTo: pokemonLogoImage.bottomAnchor, constant: 195).isActive = true
        userTextField.heightAnchor.constraint(equalToConstant: CGFloat(40.0)).isActive = true
        userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        userTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpConstraint()
    }
    
    
}
