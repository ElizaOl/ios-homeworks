//
//  ViewController2.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 20.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileHeader)

        view.backgroundColor = .lightGray
        title = "Профиль"
    }
    
    private lazy var profileHeader = ProfileHeaderView()
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeader.frame = view.frame
    }
    
    
    
}
