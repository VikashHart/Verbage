//
//  FeedView.swift
//  Verbage
//
//  Created by C4Q on 4/28/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class FeedView: UIView {
    
    private let font = "AvenirNext-Regular"
    
    lazy var headerBackground: GradientView = {
        let header = GradientView()
        header.gradientLayer?.startPoint = CGPoint(x: 0, y: 0.5)
        header.gradientLayer?.endPoint = CGPoint(x: 1, y: 0.5)
        header.gradientLayer?.colors = CGColor.verbage
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
        label.text = "Feed"
        label.font = UIFont(name: font, size: 20)
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var clearButton: UIButton = {
        let button = UIButton()
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.opacity = 1
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.masksToBounds = true
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var postButton: UIButton = {
        let button = UIButton()
        button.setTitle("Post", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.opacity = 1
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.masksToBounds = true
        button.backgroundColor = .clear
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.clearButton.layer.cornerRadius = clearButton.bounds.size.height / 2
        self.postButton.layer.cornerRadius = postButton.bounds.size.height / 2
    }
    
    private func setupViews() {
        setupHeaderBackground()
        setupHeaderView()
        setupHeaderLabel()
//        setupClearButton()
//        setupPostButton()
        
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
    
    private func setupClearButton() {
        addSubview(clearButton)
        NSLayoutConstraint.activate([
            clearButton.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 10),
            clearButton.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor),
            clearButton.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.45),
            clearButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.15)
            ])
    }
    
    private func setupPostButton() {
        addSubview(postButton)
        NSLayoutConstraint.activate([
            postButton.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -10),
            postButton.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor),
            postButton.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.45),
            postButton.widthAnchor.constraint(equalTo: widthAnchor , multiplier: 0.15)
            ])
    }
}
