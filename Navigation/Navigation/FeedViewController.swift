//
//  ViewController1.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 20.04.2022.
//

import UIKit

class FeedViewController: UIViewController {

    var myPost = Post(title: "Мой пост")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
        self.title = "Лента"

        self.view.addSubview(pushButtonPost)
        self.pushButtonPost.addTarget(self, action: #selector(buttonTapPost), for: .touchUpInside)
    }
    
    let pushButtonPost: UIButton = {
        let button = UIButton()
        button.setTitle("Открыть пост", for: .normal)
        button.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBlue

        return button
    }()
    
    @objc func buttonTapPost() {
        let post = PostViewController()
        self.navigationController?.pushViewController(post, animated: true)
    }
    
}
