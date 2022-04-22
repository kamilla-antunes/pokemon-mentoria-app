//
//  ViewController.swift
//  pokemon-mentoria-app
//
//  Created by kamilla.antunes on 20/01/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var whiteButton: PrimaryButton = {
        let button = PrimaryButton(type: .secondary)
        
        button.frame = CGRect(origin: CGPoint(x: 100, y: 50), size: CGSize(width: 188, height: 68))
        button.addTarget(self, action: #selector(self.clickButtonWhite), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var blueButton: PrimaryButton = {
        let button = PrimaryButton(type: .primary)
        
        button.frame = CGRect(origin: CGPoint(x: 100, y: 150), size: CGSize(width: 188, height: 68))
        button.addTarget(self, action: #selector(self.clickButtonBlue), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(whiteButton)
        view.addSubview(blueButton)
    }
    
    @objc func clickButtonWhite() {
        let articlesListViewController = ArticlesListViewController()
        
        navigationController?.pushViewController(articlesListViewController, animated: true)
    }
    
    @objc func clickButtonBlue() {
        let blueViewControlle = BlueViewController()
        
        navigationController?.pushViewController(blueViewControlle, animated: true)
    }
}
