//
//  ViewController.swift
//  Instagram
//
//  Created by Nicolas Desormiere on 10/8/18.
//  Copyright © 2018 Nicolas Desormiere. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let plusPhotoButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(#imageLiteral(resourceName: "plus_photo").withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  let emailTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Email"
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.backgroundColor = UIColor(white: 0, alpha: 0.03)
    textField.borderStyle = .roundedRect
    textField.font = UIFont.systemFont(ofSize: 14)
    textField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
    return textField
  }()
  
  let usernameTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Username"
    textField.backgroundColor = UIColor(white: 0, alpha: 0.03)
    textField.borderStyle = .roundedRect
    textField.font = UIFont.systemFont(ofSize: 14)
    textField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
    return textField
  }()
  
  let passwordTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Password"
    textField.isSecureTextEntry = true
    textField.backgroundColor = UIColor(white: 0, alpha: 0.03)
    textField.borderStyle = .roundedRect
    textField.font = UIFont.systemFont(ofSize: 14)
    textField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
    return textField
  }()
  
  let signUpButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Sign Up", for: .normal)
    button.backgroundColor = Theme.Color.blue
    button.layer.cornerRadius = 5
    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    button.setTitleColor(.white, for: .normal)
    button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
    button.isEnabled = false
    return button
  }()
  
  @objc func handleTextInputChange() {
    let isFormValid = emailTextField.text?.isEmpty != true && usernameTextField.text?.isEmpty != true && passwordTextField.text?.isEmpty != true
    if isFormValid {
      signUpButton.isEnabled = true
      signUpButton.backgroundColor = Theme.Color.validBlue
    } else {
      signUpButton.isEnabled = false
      signUpButton.backgroundColor = Theme.Color.blue
    }
  }
  
  @objc func handleSignUp() {
    guard let email = emailTextField.text, !email.isEmpty else { return }
    guard let username = usernameTextField.text, !username.isEmpty else { return }
    guard let password = passwordTextField.text, !password.isEmpty else { return }
    
    // TODO: - Firebase auth
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(plusPhotoButton)
    
    plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    plusPhotoButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 40, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 140, height: 140)
    
    setupInputFields()
  }
  
  fileprivate func setupInputFields() {
    let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signUpButton])
    stackView.distribution = .fillEqually
    stackView.axis = .vertical
    stackView.spacing = 10
    
    view.addSubview(stackView)
    
    stackView.anchor(top: plusPhotoButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 200)
  }
  
}

