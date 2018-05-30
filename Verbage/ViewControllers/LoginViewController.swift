//
//  LoginViewController.swift
//  Verbage
//
//  Created by C4Q on 4/22/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit
import Pastel
import Material
import FirebaseAuth

class LoginViewController: UIViewController {
    
    var loginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(loginView)
        setupPastel()
        loginView.emailTextField.delegate = self
        loginView.passwordTextField.delegate = self
        addObservers()
        loginView.forgotPasswordButton.addTarget(self, action: #selector(forgotPassword), for: .touchUpInside)
        loginView.loginButton.addTarget(self, action: #selector(signIn), for: .touchUpInside)
        loginView.signUpButton.addTarget(self, action: #selector(createAccount), for: .touchUpInside)
    }
    
    private func setupPastel() {
        let pastelView = PastelView(frame: view.bounds)
        
        // Custom Direction
        pastelView.startPastelPoint = .topLeft
        pastelView.endPastelPoint = .bottomRight
        
        // Custom Duration
        pastelView.animationDuration = 3.0
        
        // Custom Color
        pastelView.setColors(HexStringToUIColor.appGradient)
        
        pastelView.startAnimation()
        view.insertSubview(pastelView, at: 0)
    }
    
    @objc func forgotPassword() {
        
    }
    
    @objc func signIn() {
        
    }
    
    @objc func createAccount() {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let _ = touches.first {
            DispatchQueue.main.async {
                self.view.endEditing(true)
            }
        }
    }
    
    private func addObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc private func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            let scrollView = self.loginView.scrollView
            scrollView.contentInset.bottom = keyboardSize.size.height
            scrollView.scrollIndicatorInsets.bottom = keyboardSize.size.height
            let newOffset = CGPoint(x: scrollView.frame.minX,
                                    y: CGFloat(keyboardSize.size.height))
            scrollView.setContentOffset(newOffset, animated: true)
        }
    }
    
    @objc private func keyboardWillHide(notification: NSNotification) {
        let scrollView = self.loginView.scrollView
        scrollView.contentInset.bottom = 0
        scrollView.scrollIndicatorInsets.bottom = 0
    }
}

extension LoginViewController: TextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //TODO:-
    //figure out how to dismiss first responder when you hit the done button for both text fields. the below method is for text view.
    //also drop this view in a scroll view that will move up to the selected text field.
    
//    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
//        if (text == "\n") {
//            textView.resignFirstResponder()
//        }
//        return true
//    }
}

