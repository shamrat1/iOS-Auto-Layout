//
//  ViewController.swift
//  Auto Layout
//
//  Created by Yasin Shamrat on 12/18/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let imageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let titleView : UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Welcome to Universal Studio"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.textColor = .black
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = UIColor(named: "bgColor")
        return textView
    }()
    
    let descriptionView : UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "A Hollywood is a film studio and theme park in the San Fernando Valley area of Los Angeles County, California."
        textView.textAlignment = .center
        textView.textColor = .black
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = UIColor(named: "bgColor")
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "bgColor")
        

        setupLayout()
        
        
    }

    private func setupLayout(){
        
        //top container view
        
        let topContainerView = UIView()
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
//        topContainerView.backgroundColor = .white
        view.addSubview(topContainerView)
        
        //constraints
        topContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        //constraints
        //top container view
        
        
        //middle container view
        
        let middleContainerView = UIView()
        middleContainerView.translatesAutoresizingMaskIntoConstraints = false
//        middleContainerView.backgroundColor = .blue
        view.addSubview(middleContainerView)
        
        //constraints
        middleContainerView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        middleContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        middleContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        middleContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        //constraints
        
        //middle container view
        
        
        topContainerView.addSubview(imageView)
        middleContainerView.addSubview(titleView)
        middleContainerView.addSubview(descriptionView)
        
        //image view constraints
        imageView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: topContainerView.widthAnchor, multiplier: 0.9).isActive = true
        //image view constraints
        
        //title text view
        titleView.topAnchor.constraint(equalTo: middleContainerView.topAnchor).isActive = true
        titleView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        titleView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        titleView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        //title text view

        //description text view
        descriptionView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 15).isActive = true
        descriptionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        descriptionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        descriptionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        //description text view
    }

}

