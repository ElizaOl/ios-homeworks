//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Elizabeth Olubowale on 25.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let myView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            myView.frame = CGRect(x: 30, y: 70, width: 350, height: 700)
            view.addSubview(myView)
        }
    }
    

}
