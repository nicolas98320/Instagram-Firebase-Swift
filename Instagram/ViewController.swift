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
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let emailTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Email"
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.backgroundColor = UIColor(white: 0, alpha: 0.03)
    textField.borderStyle = .roundedRect
    textField.font = UIFont.systemFont(ofSize: 14)
    return textField
  }()
  
  let usernameTextField: UITextField = {
    let tf = UITextField()
    tf.placeholder = "Username"
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
    tf.borderStyle = .roundedRect
    tf.font = UIFont.systemFont(ofSize: 14)
    return tf
  }()
  
  let passwordTextField: UITextField = {
    let tf = UITextField()
    tf.placeholder = "Password"
    tf.isSecureTextEntry = true
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
    tf.borderStyle = .roundedRect
    tf.font = UIFont.systemFont(ofSize: 14)
    return tf
  }()
  
  let signUpButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Sign Up", for: .normal)
    button.backgroundColor = UIColor(red: 149/255, green: 204/255, blue: 244/255, alpha: 1)
    button.layer.cornerRadius = 5
    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    button.setTitleColor(.white, for: .normal)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(plusPhotoButton)
    
    plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
    plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
    plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
    
    setupInputFields()
  }
  
  fileprivate func setupInputFields() {
    let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signUpButton])
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.distribution = .fillEqually
    stackView.axis = .vertical
    stackView.spacing = 10
    
    view.addSubview(stackView)
    
    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor, constant: 20),
      stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
      stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
      stackView.heightAnchor.constraint(equalToConstant: 200)
      ])
  }
}

