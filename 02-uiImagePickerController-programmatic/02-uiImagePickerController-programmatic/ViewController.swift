//
//  ViewController.swift
//  02-uiImagePickerController-programmatic
//
//  Created by Andrews Frempong on 07/10/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        let operators = ["None","Add", "Subtract", "Multiply", "Divide"]
        let segmentedControl = UISegmentedControl(items: operators)
        
        
        //select first one by default
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(onChangeOperator), for: .valueChanged)
        
        view.addSubview(segmentedControl)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        segmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        
    }
    
    func onChangeOperator (sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("Selected None")
        case 1:
        print("Selected Add")
            
        case 2:
            print("Selected Subtract")
        case 3:
            print("Selected Multiply")
        case 4:
            print("Selected Divide")
        default:
            break
        }
        
    }


}

