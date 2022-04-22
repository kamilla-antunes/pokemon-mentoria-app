//
//  NewsCell.swift
//  pokemon-mentoria-app
//
//  Created by kamilla.antunes on 11/04/22.
//

import UIKit

class ArticleCell: UITableViewCell {
    
    var articleTitleLabel = UILabel()
    var articleAuthorLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(articleTitleLabel)
        addSubview(articleAuthorLabel)
        configureTitleLabels()
        setTitleLabelsConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(article: Article){
        articleTitleLabel.text = article.titulo
        articleAuthorLabel.text = article.autor
    }
    
    func configureTitleLabels() {
        articleTitleLabel.numberOfLines = 0
        articleTitleLabel.adjustsFontSizeToFitWidth = true
        
        articleAuthorLabel.numberOfLines = 0
        articleAuthorLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setTitleLabelsConstraints() {
        articleTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        articleAuthorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        articleTitleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        articleTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        articleTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        articleTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        articleAuthorLabel.centerYAnchor.constraint(equalTo: articleTitleLabel.bottomAnchor).isActive = true
        articleAuthorLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        articleAuthorLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        articleAuthorLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
}
