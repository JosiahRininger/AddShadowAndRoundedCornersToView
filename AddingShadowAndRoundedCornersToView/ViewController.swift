//
//  ViewController.swift
//  AddingShadowAndRoundedCornersToView
//
//  Created by Josiah Rininger on 8/18/19.
//  Copyright © 2019 Josiah Rininger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Creates your mainView
    var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.5
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // Creates your contentsLayer
    // Add all your subsequent subviews to your contentsLayer
    var contentsLayer: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = .white
        view.addSubview(mainView)
        mainView.addSubview(contentsLayer)
        
        NSLayoutConstraint.activate([
            
            // Constrains your mainView to the ViewController's view
            mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainView.heightAnchor.constraint(equalToConstant: view.frame.height * 0.5),
            mainView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.7),
            
            // Constrains your contentsLayer to the mainView
            contentsLayer.centerYAnchor.constraint(equalTo: mainView.centerYAnchor),
            contentsLayer.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            contentsLayer.heightAnchor.constraint(equalTo: mainView.heightAnchor),
            contentsLayer.widthAnchor.constraint(equalTo: mainView.widthAnchor)
            ])
    }
}
