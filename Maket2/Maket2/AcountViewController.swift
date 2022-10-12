//
//  VCAccount.swift
//  Maket2
//
//  Created by dunice-internship on 11.10.2022.
//

import UIKit

class VCAccount: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

   

    @IBAction func nazad(_ sender: Any) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "News")
            VC?.modalPresentationStyle = .fullScreen
            VC?.modalTransitionStyle = .coverVertical
            present(VC!, animated: true)
    }
    @IBAction func goToLog(_ sender: Any) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "log")
            VC?.modalPresentationStyle = .fullScreen
            VC?.modalTransitionStyle = .coverVertical
            present(VC!, animated: true)
    }
}
