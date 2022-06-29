//
//  LoginView.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 12.06.2022.
//

import UIKit

class LogInView: UIView {

    let logoView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "logo"))
        image.clipsToBounds = true
        
        return image
    }()
    
    let loginTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16)
        textField.autocapitalizationType = .none
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 0.5
        textField.backgroundColor = .systemGray6
        textField.borderStyle = .roundedRect
        textField.placeholder = "Email or phone"
        textField.isUserInteractionEnabled = true
        
        
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16)
        textField.autocapitalizationType = .none
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 0.5
        textField.backgroundColor = .systemGray6
        textField.borderStyle = .roundedRect
        textField.placeholder = "Password"
        
        textField.isSecureTextEntry = true
        
        return textField
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false        
        addSubview(loginTextField)
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 120),
            logoView.widthAnchor.constraint(equalToConstant: 100),
            logoView.heightAnchor.constraint(equalToConstant: 100),
            logoView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            
            loginTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 340),
            loginTextField.heightAnchor.constraint(equalToConstant: 50),
            loginTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            loginTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            passwordTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
