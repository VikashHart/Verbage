//
//  LoginView.swift
//  Verbage
//
//  Created by Vikash Hart on 4/19/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit
import Material

class LoginView: UIView {
    
    lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()

    lazy var iconLabel: UILabel = {
        let label = UILabel()
        label.text = "Verbage"
        label.font = UIFont(name: "Zapfino", size: 30)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    lazy var emailTextField: ErrorTextField = {
        let email = ErrorTextField()
        email.placeholder = "Email"
        email.detail = "Error, invalid email"
        email.isClearIconButtonEnabled = true
        email.isPlaceholderUppercasedWhenEditing = true
        email.placeholderAnimation = .hidden
        let leftView = UIImageView()
        leftView.image = #imageLiteral(resourceName: "email")
        email.leftView = leftView
        return email
    }()
    
    lazy var passwordTextField: TextField = {
        let pass = TextField()
        pass.placeholder = "Password"
        pass.detail = "At least 6 characters"
        pass.clearButtonMode = .whileEditing
        pass.isVisibilityIconButtonEnabled = true
        pass.isSecureTextEntry = true
        let leftView = UIImageView()
        leftView.image = #imageLiteral(resourceName: "password")
        pass.leftView = leftView
        return pass
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button.backgroundColor = .clear
//        button.layer.cornerRadius = 8
//        button.layer.borderColor = UIColor.white.cgColor
//        button.layer.borderWidth = 1
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 8
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 8
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
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
        setupContainerView()
    }
    
    private func setupContainerView() {
        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.8),
            containerView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.7),
            containerView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
            ])
    }
    
    private func setupIconLabel() {
        addSubview(iconLabel)
        iconLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: containerView.topAnchor),
            widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1),
            centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupEmail() {
        addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: iconLabel.bottomAnchor, constant: 30),
            widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1),
            centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupPassword() {
        addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1),
            centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupForgotPasswordButton() {
        addSubview(forgotPasswordButton)
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1),
            centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupLoginButton() {
        addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 40),
            widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1),
            centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupSignUpButton() {
        addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1),
            centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
}

