//
//  NewsCell.swift
//  pokemon-mentoria-app
//
//  Created by kamilla.antunes on 11/04/22.
//

import UIKit

class ArticleCell: UITableViewCell {
    
    var articleTitleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(articleTitleLabel)
        configureTitleLabel()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(article: Article){
        articleTitleLabel.text = article.tituloNoticia
    }
    
    func configureTitleLabel() {
        articleTitleLabel.numberOfLines = 0
        articleTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setTitleLabelConstraints() {
        articleTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        articleTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        articleTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        articleTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        articleTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
}
