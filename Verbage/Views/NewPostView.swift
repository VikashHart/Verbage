//
//  NewPostView.swift
//  Verbage
//
//  Created by C4Q on 4/28/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit
import Material

class NewPostView: UIView {

    private let font = "AvenirNext-Regular"
    private let textFieldActiveColor = UIColor.cornFlowerBlue
    
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
        label.text = "New Post"
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
    
    lazy var gradientView: GradientView = {
        let view = GradientView()
        view.gradientLayer?.startPoint = CGPoint(x: 0, y: 0)
        view.gradientLayer?.endPoint = CGPoint(x: 1, y: 1)
        view.gradientLayer?.colors = CGColor.glassWater
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleTextField: TextField = {
        let title = TextField()
        title.textColor = .black
        title.font = UIFont(name: font, size: 18)
        title.placeholder = "Title"
        title.isClearIconButtonEnabled = true
        title.clearIconButton?.tintColor = .darkGray
        title.autocorrectionType = .no
        title.returnKeyType = UIReturnKeyType.done
        title.keyboardAppearance = .dark
        title.placeholderNormalColor = .gray
        title.placeholderActiveColor = .black
        title.dividerNormalColor = .black
        title.dividerActiveColor = textFieldActiveColor
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var bodytextView: UITextView = {
        let body = UITextView()
        body.font = UIFont(name: font, size: 18)
        body.text = "Enter text here"
        body.textColor = .gray
        body.backgroundColor = .clear
        body.layer.cornerRadius = 10
        body.layer.masksToBounds = true
        body.layer.borderColor = UIColor.black.cgColor
        body.layer.borderWidth = 1
        body.keyboardAppearance = .dark
        body.autocorrectionType = .no
        body.translatesAutoresizingMaskIntoConstraints = false
        return body
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
        setupClearButton()
        setupPostButton()
        setupGradientView()
        setupTitleTextField()
        setupBodytextView()
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
    
    private func setupGradientView() {
        addSubview(gradientView)
        NSLayoutConstraint.activate([
            gradientView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            gradientView.leadingAnchor.constraint(equalTo: leadingAnchor),
            gradientView.trailingAnchor.constraint(equalTo: trailingAnchor),
            gradientView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            gradientView.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
    
    private func setupTitleTextField() {
        addSubview(titleTextField)
        NSLayoutConstraint.activate([
            titleTextField.topAnchor.constraint(equalTo: gradientView.topAnchor, constant: 40),
            titleTextField.leadingAnchor.constraint(equalTo: gradientView.leadingAnchor, constant: 12),
            titleTextField.trailingAnchor.constraint(equalTo: gradientView.trailingAnchor, constant: -12),
            titleTextField.centerXAnchor.constraint(equalTo: gradientView.centerXAnchor)
            ])
    }
    
    private func setupBodytextView() {
        addSubview(bodytextView)
        NSLayoutConstraint.activate([
            bodytextView.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 20),
            bodytextView.leadingAnchor.constraint(equalTo: gradientView.leadingAnchor, constant: 10),
            bodytextView.trailingAnchor.constraint(equalTo: gradientView.trailingAnchor, constant: -10),
            bodytextView.heightAnchor.constraint(equalTo: gradientView.heightAnchor, multiplier: 0.4),
            bodytextView.centerXAnchor.constraint(equalTo: gradientView.centerXAnchor)
            ])
    }
}

