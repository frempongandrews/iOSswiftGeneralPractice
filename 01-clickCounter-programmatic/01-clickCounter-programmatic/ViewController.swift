//
//  ViewController.swift
//  01-clickCounter-programmatic
//
//  Created by Andrews Frempong on 29/09/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var plusButton: UIButton?
    var minusButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        
        plusButton = {
           let button = UIButton()
            button.setTitle("+", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 1
            
            //////<!-- ADD TO ANKI : change size of the text of a button into size 50-->
            
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
            
            //button.backgroundColor = .black
            
            //deactivate frame
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        
        minusButton = {
           let button = UIButton()
            button.setTitle("-", for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
            button.setTitleColor(.black, for: .normal)
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 1
            button.frame.size.width = 200
            button.backgroundColor = .red
            
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        
        
        
        
        //adding to view
        guard let plusButton = self.plusButton else { return }
        view.addSubview(plusButton)
        
        guard let minusButton = self.minusButton else { return }
        view.addSubview(minusButton)
        
        plusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -80).isActive = true
        plusButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10).isActive = true
        plusButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        minusButton.leftAnchor.constraint(equalTo: plusButton.rightAnchor, constant: 50).isActive = true
        minusButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10).isActive = true
        minusButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }

}

