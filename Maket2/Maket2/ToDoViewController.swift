//
//  ToDoViewController.swift
//  Maket2
//
//  Created by dunice-internship on 12.10.2022.
//

import UIKit

class ToDoViewController: UIViewController {

  
   

    
    @IBOutlet weak var fixView: UIView!
    @IBOutlet weak var pilotView: UIView!
    @IBOutlet weak var viewTwo: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBAction func button(_ sender: UIButton) {
        if viewTwo.isHidden == true {
            
            viewTwo.isHidden = false
            var frameF = pilotView.frame
                  frameF.origin = CGPoint(x: 16, y: 296)
                  pilotView.frame = frameF
                
            var frameeZ = fixView.frame
                      frameeZ.origin = CGPoint(x: 16, y: 347)
            fixView.frame = frameeZ
            
        } else{
            viewTwo.isHidden = true
            var frame = pilotView.frame
                  frame.origin = CGPoint(x: 15, y: 522)
                  pilotView.frame = frame
                
            var framee = fixView.frame
                      framee.origin = CGPoint(x: 16, y: 573)
                fixView.frame = framee
        }
        
        
    }
    
   
    
    @IBAction func buttomAccount(_ sender: Any) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "account")
            VC?.modalPresentationStyle = .fullScreen
            VC?.modalTransitionStyle = .coverVertical
            present(VC!, animated: true)
    }

}
