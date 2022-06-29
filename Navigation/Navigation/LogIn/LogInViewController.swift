//
//  loginController.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 12.06.2022.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        view.addSubview(login)
        login.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            login.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            login.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            login.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            login.heightAnchor.constraint(equalToConstant: 220)
        ])
        
        let logInButton: UIButton = {
            let button = UIButton()
            button.setTitle("Log In", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .blue
            button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
            button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
            button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .selected)
            button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .highlighted)
            button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .disabled)
            button.layer.cornerRadius = 10
            
            return button
        }()
        
        login.addSubview(logInButton)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logInButton.heightAnchor.constraint(equalToConstant: 50),
            logInButton.trailingAnchor.constraint(equalTo: login.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            logInButton.leadingAnchor.constraint(equalTo: login.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            logInButton.topAnchor.constraint(equalTo: login.safeAreaLayoutGuide.topAnchor, constant: 456),
        ])

        
    }
    
    @objc func buttonPress() {
        let profile = ProfileViewController()
        navigationController?.pushViewController(profile, animated: true)
    }
    
    
    private lazy var login = LogInView()
    

}
