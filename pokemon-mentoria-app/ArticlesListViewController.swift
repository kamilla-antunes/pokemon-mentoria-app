//
//  WhiteViewController.swift
//  pokemon-mentoria-app
//
//  Created by kamilla.antunes on 19/03/22.
//

import SwiftUI

class ArticlesListViewController : UIViewController {
    
    var tableView = UITableView()
    
    var articles: [Article] = []
    
    struct Cells {
        static let articlesCell = "ArticlesCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Articles"
        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.rowHeight = 100
        tableView.register(ArticleCell.self, forCellReuseIdentifier: Cells.articlesCell)
        tableView.pin(to: view)
    }
    
    func setTableViewDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ArticlesListViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.articlesCell) as! ArticleCell
        let article = articles[indexPath.row]
        cell.set(article: article)
        
        return cell
    }
}

extension UIView {
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
    }
}

extension ArticlesListViewController {
    func fetchData() {
        let url = URL.init(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=ce8ed40d511945369a679ddd61a6a13d")
        URLSession.shared.dataTask(with: url!) { [weak self] data, response, error in
            guard let self = self else {
                return
            }
            
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let news = try JSONDecoder().decode(Response.self, from: data)
                for article in news.noticias {
                    self.articles.append(article)
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
