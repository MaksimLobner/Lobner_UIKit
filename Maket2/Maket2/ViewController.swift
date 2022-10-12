//
//  ViewController.swift
//  Maket2
//
//  Created by dunice-internship on 12.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sView: UIView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button(_ sender: Any) {
        var frame = sView.frame
              frame.origin = CGPoint(x: 16, y: 600)
              sView.frame = frame
    }
    
}
