//
//  InfoViewController.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 22.04.2022.
//

import UIKit

class InfoViewController: UIViewController {

    let pushButtonAlert: UIButton = {
        let button = UIButton()
        button.setTitle("Удалить пост", for: .normal)
        button.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBlue

        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Настройки"
        self.view.backgroundColor = .systemBackground

        self.view.addSubview(pushButtonAlert)
        self.pushButtonAlert.addTarget(self, action: #selector(buttonTapAlert), for: .touchUpInside)
    }

    @objc func buttonTapAlert() {
        let alertController = UIAlertController(title: "Удалить пост", message: "Подтвердите действие", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(
            title: "Отмена",
            style: .cancel,
            handler: {_ in
            print("Отменено")
        }))
        alertController.addAction(UIAlertAction(
            title: "Подтверждаю",
            style: .destructive,
            handler: {_ in
                print("Подтверждено")
            }))
        present(alertController, animated: true)
    }
    
}
