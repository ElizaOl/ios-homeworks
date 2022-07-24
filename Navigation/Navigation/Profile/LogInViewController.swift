//
//  loginController.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 12.06.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonTapToProfile), for: .touchUpInside)
        
        return button
    }()
    
    let logoView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "logo"))
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        
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
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        
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
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        customAddSubview()
        layoutConstraints()
        tapToHideKeyboard()
        
    }
    
    func customAddSubview() {
        view.addSubview(loginButton)
        view.addSubview(logoView)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
    }
    
    func layoutConstraints() {
        NSLayoutConstraint.activate([
            
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            loginButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 456),
            
            logoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            logoView.widthAnchor.constraint(equalToConstant: 100),
            logoView.heightAnchor.constraint(equalToConstant: 100),
            logoView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            loginTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 340),
            loginTextField.heightAnchor.constraint(equalToConstant: 50),
            loginTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            loginTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)

        ])
    }
    
    @objc func buttonTapToProfile() {
        let profile = ProfileViewController()
        self.navigationController?.pushViewController(profile, animated: true)
    }
    
    @objc func tapToHideKeyboard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}
