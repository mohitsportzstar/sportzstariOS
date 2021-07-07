//
//  Page3.swift
//  SportzStar
//
//  Created by Mohit Chaudhary on 05/07/21.
//

import UIKit

class Page3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Button Action Methods

    @IBAction func getStartedBtnAction(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: false)
    }
    

}
