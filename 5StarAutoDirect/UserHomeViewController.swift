//
//  YourCarViewController.swift
//  5StarAutoDirect
//
//  Created by Clay Mills on 6/14/17.
//  Copyright © 2017 PineAPPle LLC. All rights reserved.
//

import UIKit
import Firebase

class UserHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    var user: User?
    
    @IBAction func brokerButtonTapped(_ sender: Any) {
        guard let user = user else { return }
        if user.isBroker {
            self.performSegue(withIdentifier: "toCustomerTVC", sender: self)
        } else {
            presentYouCantGoThereAlert()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func presentYouCantGoThereAlert() {
        let accessDeniedAlertCont = UIAlertController(title: "You can't go there", message: nil, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        accessDeniedAlertCont.addAction(dismissAction)
        present(accessDeniedAlertCont, animated: true, completion: nil)
    }

}