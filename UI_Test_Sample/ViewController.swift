//
//  ViewController.swift
//  UI_Test_Sample
//
//  Created by Lokeshwaran on 13/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    

    }
    
    
    @IBAction func loginBtn(_ sender: Any) 
    {
        if(userName.text == "123" && userPassword.text == "123")
        {
            print("Pass")
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "NextView") as! NextView
            navigationController?.pushViewController(vc, animated: true)
        }
        
        else
        {
            print("Error")
            
            let alert = UIAlertController(title: "Alert", message: "Invalid login", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    


}

