//
//  ViewController.swift
//  03-uiSegmentedControl-programmatic
//
//  Created by Andrews Frempong on 08/10/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        
        setupLayout()
    }
    
    func setupLayout () {
        let operatorsArray = ["None", "Add", "Subtract", "Multiply", "Divide"]
        
         //<!--IMPORTANT: segmentedControl-->
        let segmentedControl = UISegmentedControl(items: operatorsArray)
        //IMPORTANT: default index selected
        segmentedControl.selectedSegmentIndex = 0
        //add action
        //IMPORTANT: valueChanged
        segmentedControl.addTarget(self, action: #selector(handleSelectedOperator), for: .valueChanged)
        
        //remove frame layout
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControl)
        
        segmentedControl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        segmentedControl.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        segmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
    }
    
    //<!-- IMPORTANT: segmentedControl attached function-->
    //<!-- sender -->
    func handleSelectedOperator (sender: UISegmentedControl) {
        
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

