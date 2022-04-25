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
    
    private var container = Container()
    
    private var labelLogin: UILabel = {
        let label = UILabel()
        
        label.text = "Login"
        label.textColor = .white
        label.font = .oswaldFontH3
        label.textAlignment = .center
        
        return label
    }()
    
    private var userTextField: TextField = {
        let textField = TextField(textPlaceholder: "Usuário")
        
        return textField
    }()
    
    private var passwordTextField: TextField = {
        let textField = TextField(textPlaceholder: "Senha")
        
        return textField
    }()
    
    func setUpConstraint() {
        for name in UIFont.fontNames(forFamilyName: "Josefin Sans") {
            print(name)
        }
        
        view.backgroundColor = .white
        view.addSubview(pokemonLogoImage)
        view.addSubview(container)
        view.addSubview(labelLogin)
        view.addSubview(userTextField)
        view.addSubview(passwordTextField)
        
        pokemonLogoImage.translatesAutoresizingMaskIntoConstraints = false
        container.translatesAutoresizingMaskIntoConstraints = false
        labelLogin.translatesAutoresizingMaskIntoConstraints = false
        userTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        pokemonLogoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        pokemonLogoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        container.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        container.topAnchor.constraint(equalTo: pokemonLogoImage.bottomAnchor, constant: 80).isActive = true
        container.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50).isActive = true
        
        labelLogin.topAnchor.constraint(equalTo: container.topAnchor, constant: 40).isActive = true
        labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        labelLogin.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        
        userTextField.topAnchor.constraint(equalTo: labelLogin.bottomAnchor, constant: 27).isActive = true
        userTextField.heightAnchor.constraint(equalToConstant: CGFloat(40.0)).isActive = true
        userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        userTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 18).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: CGFloat(40.0)).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: userTextField.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: userTextField.trailingAnchor).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpConstraint()
    }
    
    
}
