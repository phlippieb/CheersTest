//
//  RootViewController.swift
//  ConfettiTest
//
//  Created by Phlippie Bosman on 2019/01/23.
//  Copyright © 2019 Phlippie Bosman. All rights reserved.
//

import UIKit

final class RootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ROOT"
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(self.button)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    // Subviews
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(onButton), for: .touchUpInside)
        return button
    }()
    
    // Actions
    
    @objc private func onButton() {
        let confettiController = ConfettiViewController()
        self.navigationController?.pushViewController(confettiController, animated: true)
    }
}
