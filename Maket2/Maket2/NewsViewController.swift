//
//  View.swift
//  Maket2
//
//  Created by dunice-internship on 06.10.2022.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var SegmentController: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var controllerNamber:String = ""
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch SegmentController.selectedSegmentIndex{
        case 0: return 5
        case 1: return 15
        case 2: return 0
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch SegmentController.selectedSegmentIndex{
        case 0: controllerNamber = "taskUpdates"
        case 1:controllerNamber = "kanBanUpdates"
        case 2 :controllerNamber = "taskUpdates"
        default: break
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: controllerNamber, for: indexPath)
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch SegmentController.selectedSegmentIndex{
        case 0: return 331
        case 1: return 117
        default: return 0
        }
       
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func SegmentAction(_ sender: Any) {
        tableView.reloadData()
    }
    
    
    @IBAction func buttonAccount(_ sender: Any) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "account")
            VC?.modalPresentationStyle = .fullScreen
            VC?.modalTransitionStyle = .coverVertical
            present(VC!, animated: true)
           }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


