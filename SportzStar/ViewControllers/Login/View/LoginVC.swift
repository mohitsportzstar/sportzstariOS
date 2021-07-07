//
//  LoginVC.swift
//  SportzStar
//
//  Created by Mohit Chaudhary on 05/07/21.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialSetUp()
    }
    
    func initialSetUp(){
        guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "Pages") as? Pages else {return}
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    

    //MARK: Button Action Methods
    
    @IBAction func forgotPasswordBtnAction(_ sender: Any) {
        let forgotVC = self.storyboard?.instantiateViewController(identifier: "ResetPasswordVC") as? ResetPasswordVC
        self.navigationController?.pushViewController(forgotVC!, animated: true)
    }
    
    @IBAction func signUpBtnAction(_ sender: Any) {
        let signUpVC = self.storyboard?.instantiateViewController(identifier: "SignUpVC") as? SignUpVC
        self.navigationController?.pushViewController(signUpVC!, animated: true)
    }
    

}
