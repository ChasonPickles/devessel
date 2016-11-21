//
//  LoginViewController.swift
//  Rockette
//
//  Created by Harsh Bindra on 2016-10-25.
//
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        login.layer.borderWidth = 1.0
        login.layer.borderColor = UIColor.black.cgColor
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var login: UIButton!
    
    
    @IBAction func logInPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToHub", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
