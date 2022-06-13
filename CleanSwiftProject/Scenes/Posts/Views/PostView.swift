//
//  PostView.swift
//  CleanSwiftProject
//
//  Created by Вячеслав Квашнин on 13.06.2022.
//

import UIKit

class PostView: UIView {
    
    let tableView: UITableView
    
    override init(frame: CGRect) {
        tableView = UITableView()
        super.init(frame: frame)
        
        setupComponents()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupComponents() {
        addSubviewForAutolayout(tableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.topAnchor.constraint(equalTo: topAnchor)
        ])
    }
}
