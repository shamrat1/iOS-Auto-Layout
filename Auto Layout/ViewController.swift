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
        
        let text = NSMutableAttributedString(string: "Welcome to Universal Studio", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        text.append(NSMutableAttributedString(string: "\n\n\nA Entertainment and Theme Park Company Based on USA.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        
        textView.attributedText = text
        textView.textAlignment = .center
        textView.textColor = .black
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = UIColor(named: "bgColor")
        return textView
    }()
    
    let previousButton : UIButton = {
        let button = UIButton()
        button.setTitle("PREV", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        return button
    }()
    
    let nextButton : UIButton = {
        let button = UIButton()
        button.setTitle("NEXT", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let pageControl : UIPageControl = {
        let control = UIPageControl()
        control.currentPage = 0
        control.numberOfPages = 4
        control.currentPageIndicatorTintColor = .black
        control.pageIndicatorTintColor = .gray
        return control
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "bgColor")
        
        setupBottomControls()
        setupLayout()
        
        
    }
    
    private func setupBottomControls(){
      
        
        let stackView = UIStackView(arrangedSubviews: [previousButton,pageControl,nextButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 50)
        ])
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

    }

}

