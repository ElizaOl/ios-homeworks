//
//  ViewController1.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 20.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    let pushButtonPost = UIButton()
    
    var testPost = Post(title: "Мой пост")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
        self.title = "Лента"
        
        self.pushButtonPost.setTitle("Открыть пост", for: .normal)
        self.view.addSubview(pushButtonPost)
        self.pushButtonPost.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        self.pushButtonPost.addTarget(self, action: #selector(buttonTapPost), for: .touchUpInside)
        self.pushButtonPost.setTitleColor(.black, for: .normal)
        self.pushButtonPost.backgroundColor = .systemBlue
    }
    
    @objc func buttonTapPost() {
        let post = PostViewController()
        self.navigationController?.pushViewController(post, animated: true)
    }
    
}
