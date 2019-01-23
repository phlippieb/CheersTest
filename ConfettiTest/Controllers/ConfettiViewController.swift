//
//  ConfettiViewController.swift
//  ConfettiTest
//
//  Created by Phlippie Bosman on 2019/01/23.
//  Copyright © 2019 Phlippie Bosman. All rights reserved.
//

import Cheers
import UIKit

final class ConfettiViewController: UIViewController {
    
    // Subviews
    
    private lazy var confettiView: CheerView = {
        let view = CheerView()
        return view
    }()
    
    // Layout
    
    override func loadView() {
        super.loadView()
        self.title = "CONFETTI"
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(self.confettiView)
        self.confettiView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.confettiView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.confettiView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.confettiView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.confettiView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
    
    // Auto-start/stop confetti animation
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.confettiView.start()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.confettiView.stop()
    }    
}
