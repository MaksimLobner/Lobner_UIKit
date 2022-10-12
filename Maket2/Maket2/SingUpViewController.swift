//
//  SingUpViewController.swift
//  Maket2
//
//  Created by dunice-internship on 12.10.2022.
//

import UIKit

class SingUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func goToLogin(_ sender: Any) {
        let segue = storyboard?.instantiateViewController(withIdentifier: "log")
            segue?.modalPresentationStyle = .fullScreen
            segue?.modalTransitionStyle = .coverVertical
                present(segue!, animated: true)
    }
  
        
    
   
    }

