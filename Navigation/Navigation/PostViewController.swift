//
//  PostViewController.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 21.04.2022.
//

import UIKit

class PostViewController: UIViewController {

    let pushButtonInfo: UIButton = {
        let button = UIButton()
        button.setTitle("Settings", for: .normal)
        button.frame = CGRect(x: 50, y: 500, width: 300, height: 30)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBlue

        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeView()
    }
    
    func customizeView() {
        self.view.backgroundColor = .systemIndigo
        
        self.view.addSubview(pushButtonInfo)
        self.pushButtonInfo.addTarget(self, action: #selector(buttonTapInfo), for: .touchUpInside)
    }

    @objc func buttonTapInfo() {
        self.present(InfoViewController(), animated: true )
    }
        

}
