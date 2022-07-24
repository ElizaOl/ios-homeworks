//
//  ViewController1.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 20.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    let pushButtonPost: UIButton = {
        let button = UIButton()
        button.setTitle("Open post", for: .normal)
        button.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBlue

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeView()
    }
    
    func customizeView() {
        self.view.backgroundColor = .systemBackground
        self.title = "Feed"

        self.view.addSubview(pushButtonPost)
        self.pushButtonPost.addTarget(self, action: #selector(buttonTapPost), for: .touchUpInside)
    }
    
    @objc func buttonTapPost() {
        let post = PostViewController()
        self.navigationController?.pushViewController(post, animated: true)
    }
    
}
