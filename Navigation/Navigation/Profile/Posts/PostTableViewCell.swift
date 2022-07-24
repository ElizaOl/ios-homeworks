//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 12.06.2022.
//

import Foundation
import UIKit

class PostTableViewCell: UITableViewCell {

    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label  = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .systemGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let postImage: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let likeCountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let viewCountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        customizeCell()
        layoutConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpCell(post: PostTemplate) {
        authorLabel.text = post.author
        descriptionLabel.text = post.description
        postImage.image = UIImage(named: post.image)
        likeCountLabel.text = "Likes: \(String(post.likes))"
        viewCountLabel.text = "Views: \(String(post.views))"
    }
    
    func customizeCell() {
        contentView.addSubview(authorLabel)
        contentView.addSubview(postImage)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(likeCountLabel)
        contentView.addSubview(viewCountLabel)
    }
    
    func layoutConstraints() {
        NSLayoutConstraint.activate([
            authorLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            authorLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            authorLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
                    
            postImage.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 12),
            postImage.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            postImage.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            
            descriptionLabel.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 16),
            descriptionLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            descriptionLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            
            likeCountLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            likeCountLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            
            viewCountLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            viewCountLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
        ])
        
        contentView.heightAnchor.constraint(equalTo: descriptionLabel.heightAnchor, constant: UIScreen.main.bounds.width + 120).isActive = true
    }
}

