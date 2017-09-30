//
//  ViewController.swift
//  01-clickCounter-programmatic
//
//  Created by Andrews Frempong on 29/09/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var result = 0
    var resultLabel: UILabel?
    var plusButton: UIButton?
    var minusButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupLayout()
        
    }
    
    func setupLayout () {
        view.backgroundColor = .white
        
        plusButton = {
            let button = UIButton()
            button.setTitle("+", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = .green
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
        
        
        resultLabel = {
            let label = UILabel()
            label.text = "\(result)"
            label.textAlignment = .center
            label.font = UIFont.boldSystemFont(ofSize: 50)
            label.layer.borderWidth = 1
            label.layer.borderColor = UIColor.black.cgColor
            //remove frame layout
            label.translatesAutoresizingMaskIntoConstraints = false
            
            return label
        }()
        
        //adding to view
        guard let plusButton = self.plusButton else { return }
        view.addSubview(plusButton)
        
        guard let minusButton = self.minusButton else { return }
        view.addSubview(minusButton)
        
        guard let resultLabel = self.resultLabel else { return }
        
        view.addSubview(resultLabel)
        
        plusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -80).isActive = true
        plusButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10).isActive = true
        plusButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        minusButton.leftAnchor.constraint(equalTo: plusButton.rightAnchor, constant: 50).isActive = true
        minusButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10).isActive = true
        minusButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        resultLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        resultLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        // <!-- Adding action-->
        
        plusButton.addTarget(self, action: #selector(increaseByOne), for: .touchUpInside)
        
        minusButton.addTarget(self, action: #selector(decreaseByOne), for: .touchUpInside)
        
    } //<!-- end setupLayout-->
    
    func increaseByOne () {
        result += 1
        resultLabel?.text = "\(result)"
    }
    
    func decreaseByOne () {
        if result > 0 {
            result -= 1
            resultLabel?.text = "\(result)"
        }
        
    }

}

