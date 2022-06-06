//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 02.05.2022.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    let profileImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "photo"))
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = 180
        image.clipsToBounds = true
        image.backgroundColor = .white
        
        return image
    }()
    
    let fullNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.text = "Имя пользователя"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.text = "В ожидании"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let statusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Показать статус", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
        button.layer.shadowRadius = 4
        button.layer.shadowOffset.width = 4
        button.layer.shadowOffset.height = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(profileImage)
        addSubview(statusButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        profileImage.frame = CGRect(x: 16, y: Int(safeAreaInsets.top) + 16, width: 100, height: 100)
        fullNameLabel.frame = CGRect(x: profileImage.frame.maxX + 16, y: safeAreaInsets.top + 27, width: bounds.width - 148, height: 20)
        statusLabel.frame = CGRect(x: profileImage.frame.maxX + 16, y: fullNameLabel.frame.maxY + 34, width: bounds.width - 148, height: 20)
        statusButton.frame = CGRect(x: 16, y: statusLabel.frame.maxY + 34, width: bounds.width - 32, height: 50)
    }
    
    @objc func buttonPress() {
        if statusLabel.text != nil {
            print((statusLabel.text)!)
        }
        else {
            print("У пользователя отсутствует статус")
        }
    }
        
}
