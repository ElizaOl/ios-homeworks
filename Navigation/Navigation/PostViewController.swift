//
//  PostViewController.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 21.04.2022.
//

import UIKit

class PostViewController: UIViewController {

    let pushButtonInfo = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemIndigo
        
        let feed = FeedViewController()
        self.title = feed.testPost.title
        
        self.pushButtonInfo.setTitle("Настройки поста", for: .normal)
        self.view.addSubview(pushButtonInfo)
        self.pushButtonInfo.frame = CGRect(x: 50, y: 500, width: 300, height: 30)
        self.pushButtonInfo.addTarget(self, action: #selector(buttonTapInfo), for: .touchUpInside)
        self.pushButtonInfo.setTitleColor(.black, for: .normal)
        self.pushButtonInfo.backgroundColor = .systemBlue
        
    }

    @objc func buttonTapInfo() {
        self.present(InfoViewController(), animated: true )
    }
        

}
