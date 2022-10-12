//
//  AccountViewController.swift
//  Maket2
//
//  Created by dunice-internship on 12.10.2022.
//

import UIKit

class AccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func gotoNews(_ sender: Any) {
        let segue = storyboard?.instantiateViewController(withIdentifier: "News")
            segue?.modalPresentationStyle = .fullScreen
            segue?.modalTransitionStyle = .coverVertical
                present(segue!, animated: true)
    }
    
    @IBAction func goToLog(_ sender: Any) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "log")
            VC?.modalPresentationStyle = .fullScreen
            VC?.modalTransitionStyle = .coverVertical
                present(VC!, animated: true)
    }
}
