//
//  NewPostViewController.swift
//  Verbage
//
//  Created by C4Q on 4/28/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class NewPostViewController: UIViewController {

    private let newPostView = NewPostView()
    private var titleText = String()
    private var bodyText = String()
    private let placeholderText = "Enter text here"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(newPostView)
        newPostView.bodytextView.delegate = self
        setupButtons()
    }
    
    private func setupButtons() {
        newPostView.clearButton.addTarget(self, action: #selector(clearText), for: .touchUpInside)
        newPostView.postButton.addTarget(self, action: #selector(createPost), for: .touchUpInside)
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Clear", style: .destructive) { alert in
            self.titleText = ""
            self.newPostView.titleTextField.text = self.titleText
            self.bodyText = ""
            self.newPostView.bodytextView.text = self.bodyText
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @objc private func clearText() {
        showAlert(title: "Clear all text", message: "Confirming will permanently delete your work!")
    }
    
    @objc private func createPost() {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let _ = touches.first {
            DispatchQueue.main.async {
                self.view.endEditing(true)
            }
        }
    }
    
}

extension NewPostViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if bodyText != placeholderText {
            textView.text = bodyText
        } else {
            textView.text = ""
        }
        
        newPostView.bodytextView.textColor = .black
        newPostView.bodytextView.layer.borderColor = UIColor.cornFlowerBlue.cgColor
        newPostView.bodytextView.layer.borderWidth = 2
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {

        switch textView.text {
        case _ where textView.text == "":
            textView.text = placeholderText
            newPostView.bodytextView.textColor = .gray
        case _ where textView.text != "":
            bodyText = textView.text
            newPostView.bodytextView.textColor = .black
        default:
            return
        }
        newPostView.bodytextView.layer.borderColor = UIColor.black.cgColor
        newPostView.bodytextView.layer.borderWidth = 1
    }
}
