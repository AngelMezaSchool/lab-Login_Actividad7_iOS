//
//  ViewController.swift
//  lab-Login_Actividad7_iOS
//
//  Created by Angel Meza on 15/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var forgotUser: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //segue.destination.navigationItem.title = userName.text
        guard let sender = sender as? UIButton else { return }
        if sender == forgotUser {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPassword{
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    
    
    @IBAction func forgotUser2(_ sender: UIButton) {
        performSegue(withIdentifier: "forgot", sender: forgotUser)
    }
    
    @IBAction func forgotPassword2(_ sender: UIButton) {
        performSegue(withIdentifier: "forgot", sender: forgotPassword)
    }
    
}

