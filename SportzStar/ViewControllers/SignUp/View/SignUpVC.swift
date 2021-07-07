//
//  SignUpVC.swift
//  SportzStar
//
//  Created by Mohit Chaudhary on 06/07/21.
//

import UIKit

class SignUpTableViewCell: UITableViewCell{
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnGetOtp: UIButton!
    @IBOutlet weak var btnShowHidePassword: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.initailizeView()
    }
    
    // MARK: Initialize Code
    func initailizeView() {
    }
}

class SignUpVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialSetUp()
    }
    
    // MARK: Initial SetUp Method
    func initialSetUp(){
        self.tblView.delegate = self
        self.tblView.dataSource = self
    }
    
    // MARK: UITableView Delegate and DataSource Methods
    // MARK: - UITableView Delegate and DataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = self.tblView.dequeueReusableCell(withIdentifier: "SignUpTableViewCell", for: indexPath) as? SignUpTableViewCell else {
                fatalError("unexpected found error")
            }
            cell.selectionStyle = .none
            
        switch indexPath.row {
        case 0:
            cell.lblTitle.text = "First Name"
            cell.btnGetOtp.isHidden = true
            cell.btnShowHidePassword.isHidden = true
        case 1:
            cell.lblTitle.text = "Last Name"
            cell.btnGetOtp.isHidden = true
            cell.btnShowHidePassword.isHidden = true
        case 2:
            cell.lblTitle.text = "Username"
            cell.btnGetOtp.isHidden = true
            cell.btnShowHidePassword.isHidden = true
        case 3:
            cell.lblTitle.text = "Email Address"
            cell.btnGetOtp.isHidden = false
            cell.btnShowHidePassword.isHidden = true
        case 4:
            cell.lblTitle.text = "Enter Password"
            cell.btnGetOtp.isHidden = true
            cell.btnShowHidePassword.isHidden = false
        case 5:
            cell.lblTitle.text = "Confirm Password"
            cell.btnGetOtp.isHidden = true
            cell.btnShowHidePassword.isHidden = false
        case 6:
            cell.lblTitle.text = "Phone Number"
            cell.btnGetOtp.isHidden = false
            cell.btnShowHidePassword.isHidden = true
        default:
            break
        }
        
        return cell
            
        }
        
            
    

    
    // MARK: - Button Action Methods
    
    @IBAction func signInBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    

}
