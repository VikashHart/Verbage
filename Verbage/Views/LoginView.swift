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
    
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.backgroundColor = .clear
        sv.delaysContentTouches = false
        //sv.isUserInteractionEnabled = false
        //sv.canCancelContentTouches = false
        return sv
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = true
        return view
    }()

    lazy var iconLabel: UILabel = {
        let label = UILabel()
        label.text = "Verbage"
        label.font = UIFont(name: "Zapfino", size: 60)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    lazy var emailTextField: TextField = {
        let email = TextField()
        email.textColor = .white
        email.font = email.font?.withSize(18)
        email.placeholder = "Email"
        email.isClearIconButtonEnabled = true
        email.clearIconButton?.tintColor = .white
        email.autocorrectionType = .no
        email.returnKeyType = UIReturnKeyType.done
        email.keyboardAppearance = .dark
        email.keyboardType = .emailAddress
        email.placeholderAnimation = .default
        email.placeholderNormalColor = .white
        email.placeholderActiveColor = .white
        email.dividerNormalColor = .white
        email.dividerActiveColor = .white
        let leftView = UIImageView()
        leftView.image = #imageLiteral(resourceName: "email")
        email.leftView = leftView
        return email
    }()
    
    lazy var passwordTextField: TextField = {
        let pass = TextField()
        pass.textColor = .white
        pass.font = pass.font?.withSize(18)
        pass.detailLabel.font = pass.font?.withSize(13)
        pass.placeholder = "Password"
        pass.detail = "At least 6 characters"
        pass.detailColor = .lightGray
        pass.clearButtonMode = .whileEditing
        pass.isVisibilityIconButtonEnabled = true
        pass.isSecureTextEntry = true
        pass.returnKeyType = UIReturnKeyType.done
        pass.keyboardAppearance = .dark
        pass.visibilityIconButton?.tintColor = .white
        pass.placeholderNormalColor = .white
        pass.placeholderActiveColor = .white
        pass.dividerNormalColor = .white
        pass.dividerActiveColor = .white
        let leftView = UIImageView()
        leftView.image = #imageLiteral(resourceName: "password")
        pass.leftView = leftView
        return pass
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = .clear
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
        backgroundColor = .clear
        setupViews()
    }
    
    private func setupViews() {
        setupScrollView()
        setupContainerView()
        setupIconLabel()
        setupEmail()
        setupPassword()
        setupForgotPasswordButton()
        setupLoginButton()
        setupSignUpButton()
    }
    
    private func setupScrollView() {
        addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            scrollView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1),
            scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            scrollView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            //scrollView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
            ])
    }
    
    private func setupContainerView() {
        scrollView.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor)
            ])
    }
    
    private func setupIconLabel() {
        containerView.addSubview(iconLabel)
        iconLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            iconLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0),
            iconLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            iconLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            iconLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1),
            iconLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupEmail() {
        containerView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: iconLabel.bottomAnchor),
            emailTextField.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9),
            emailTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupPassword() {
        containerView.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 45),
            passwordTextField.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9),
            passwordTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupForgotPasswordButton() {
        containerView.addSubview(forgotPasswordButton)
            forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            forgotPasswordButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1),
            forgotPasswordButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupLoginButton() {
        containerView.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 25),
            loginButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9),
            loginButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupSignUpButton() {
        containerView.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            signUpButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9),
            signUpButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            signUpButton.bottomAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.bottomAnchor, constant: -10)
            ])
    }
    
}

