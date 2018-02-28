//
//  ViewController.swift
//  Lession2
//
//  Created by ThietTB on 2/28/18.
//  Copyright © 2018 bipbipdinang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.autolayoutWithNSLayoutConstraint()
        self.autolayoutWithNSLayoutAnchor()
    }
    
    private func autolayoutWithNSLayoutConstraint() {
        let redView = UIView()
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
        let top =  NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
        let left = NSLayoutConstraint(item: redView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
        let width = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
        let height = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
        redView.autoresizesSubviews = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([top, left, width, height])
    }
    
    private func autolayoutWithNSLayoutAnchor() {
        let yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellow
        view.addSubview(yellowView)
        yellowView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        yellowView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        yellowView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        yellowView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}

