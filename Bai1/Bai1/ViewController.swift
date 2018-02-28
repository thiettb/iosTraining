//
//  ViewController.swift
//  Bai1
//
//  Created by ThietTB on 2/28/18.
//  Copyright © 2018 bipbipdinang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.subView()
    }
    
    private func subView() {
        let redView = UIView()
        let greenView = UIView()
        let orangeView = UIView()
        let blueView = UIView()
        view.addSubview(redView)
        view.addSubview(greenView)
        view.addSubview(orangeView)
        view.addSubview(blueView)
        redView.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        greenView.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        orangeView.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        blueView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        redView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        redView.translatesAutoresizingMaskIntoConstraints = false
        greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        greenView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        greenView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
        greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        greenView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.topAnchor.constraint(equalTo: greenView.topAnchor, constant: 0).isActive = true
        orangeView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        orangeView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
        orangeView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4).isActive = true
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        blueView.leftAnchor.constraint(equalTo: greenView.rightAnchor, constant: 0).isActive = true
        blueView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
        blueView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4).isActive = true
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}

