//
//  CommentsView.swift
//  Verbage
//
//  Created by C4Q on 4/28/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class CommentsView: UIView {
    
    private let font = "AvenirNext-Regular"
    
    lazy var headerBackground: UIImageView = {
        let header = UIImageView()
        header.image = #imageLiteral(resourceName: "Midnight Bloom")
        header.contentMode = .scaleAspectFill
        header.clipsToBounds = true
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    
    lazy var headerView: UIView = {
        let header = UIView()
        header.layer.opacity = 0.05
        header.backgroundColor = .white
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Comments"
        label.font = UIFont(name: font, size: 18)
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "back-button").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .red
        button.layer.opacity = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let commentCell = "Comment Cell"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CommentCell.self, forCellReuseIdentifier: commentCell)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    lazy var newCommentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var commentTextView: UITextView = {
        let tv = UITextView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    lazy var postButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "post").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .black
        button.layer.opacity = 1
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var recordButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "microphone off").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .black
        button.layer.opacity = 1
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupViews()
    }
    
    private func setupViews() {
        setupHeaderBackground()
        setupHeaderView()
        setupHeaderLabel()
        setupTableView()
        setupNewCommentView()
        setupCommentTextView()
        setupPostButton()
        setupRecordButton()
        
    }
    
    private func setupHeaderBackground() {
        addSubview(headerBackground)
        NSLayoutConstraint.activate([
            headerBackground.topAnchor.constraint(equalTo: topAnchor),
            headerBackground.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            headerBackground.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            headerBackground.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.11),
            headerBackground.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor)
            ])
    }
    
    private func setupHeaderView() {
        addSubview(headerView)
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: headerBackground.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: headerBackground.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: headerBackground.trailingAnchor),
            headerView.bottomAnchor.constraint(equalTo: headerBackground.bottomAnchor),
            headerView.centerXAnchor.constraint(equalTo: headerBackground.centerXAnchor)
            ])
    }
    
    private func setupHeaderLabel() {
        addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.6),
            headerLabel.centerXAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerXAnchor),
            headerLabel.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor)
            ])
    }
    
    private func setupBackButton() {
        addSubview(backButton)
        NSLayoutConstraint.activate([
            backButton.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 10),
            backButton.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor),
            backButton.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.45),
            backButton.widthAnchor.constraint(equalTo: backButton.heightAnchor, multiplier: 1)
            ])
    }
    
    private func setupTableView() {
        addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.widthAnchor.constraint(equalTo: widthAnchor),
            tableView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6),
            tableView.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
    
    private func setupNewCommentView() {
        addSubview(newCommentView)
        NSLayoutConstraint.activate([
            newCommentView.topAnchor.constraint(equalTo: tableView.bottomAnchor),
            newCommentView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1),
            newCommentView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            newCommentView.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
    
    private func setupCommentTextView() {
        newCommentView.addSubview(commentTextView)
        NSLayoutConstraint.activate([
            commentTextView.topAnchor.constraint(equalTo: newCommentView.topAnchor),
            commentTextView.leadingAnchor.constraint(equalTo: newCommentView.leadingAnchor),
            commentTextView.widthAnchor.constraint(equalTo: newCommentView.widthAnchor, multiplier: 0.85),
            commentTextView.bottomAnchor.constraint(equalTo: newCommentView.bottomAnchor)
            ])
    }
    
    private func setupPostButton() {
        newCommentView.addSubview(postButton)
        NSLayoutConstraint.activate([
            postButton.topAnchor.constraint(equalTo: newCommentView.topAnchor),
            postButton.leadingAnchor.constraint(equalTo: commentTextView.trailingAnchor),
            postButton.trailingAnchor.constraint(equalTo: newCommentView.trailingAnchor),
            postButton.heightAnchor.constraint(equalTo: newCommentView.heightAnchor, multiplier: 0.5)
            ])
    }
    
    private func setupRecordButton() {
        newCommentView.addSubview(recordButton)
        NSLayoutConstraint.activate([
            recordButton.topAnchor.constraint(equalTo: postButton.bottomAnchor),
            recordButton.leadingAnchor.constraint(equalTo: commentTextView.trailingAnchor),
            recordButton.trailingAnchor.constraint(equalTo: newCommentView.trailingAnchor),
            recordButton.heightAnchor.constraint(equalTo: newCommentView.heightAnchor, multiplier: 0.5),
            recordButton.bottomAnchor.constraint(equalTo: newCommentView.bottomAnchor)
            ])
    }
}

