//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 02.05.2022.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    let avatarImageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "photo"))
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = 50
        image.clipsToBounds = true
        image.backgroundColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let fullNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.text = "Vincent van Gogh"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.text = "Waiting for something..."
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let statusTextField: UITextField = {
        let statusText = UITextField()
        statusText.translatesAutoresizingMaskIntoConstraints = false
        
        return statusText
    }()
    
    lazy var setStatusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Set status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
        button.layer.shadowRadius = 4
        button.layer.shadowOffset.width = 4
        button.layer.shadowOffset.height = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customAddSubview()
        layoutConstraints()
        self.backgroundColor = .white
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    func customAddSubview() {
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(avatarImageView)
        addSubview(setStatusButton)
    }
    
    func layoutConstraints() {
        NSLayoutConstraint.activate([
            avatarImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            
            fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            fullNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            fullNameLabel.widthAnchor.constraint(equalToConstant: 250),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 50),
            
            statusLabel.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: -18),
            statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            
            setStatusButton.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 34),
            setStatusButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            setStatusButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    @objc func buttonPress() {
        if statusLabel.text != nil {
            print((statusLabel.text)!)
        }
        else {
            print("There is no status")
        }
    }
        
}
