//
//  ViewController.swift
//  assignment1
//
//  Created by Mac on 04/11/22.
//

import UIKit

class ViewController: UIViewController,BackDataPassingProtocol {
   
   
    @IBOutlet weak var firstNameTextFieldOnFVC: UITextField!
    @IBOutlet weak var middleNameTextFieldOnFVC: UITextField!
    @IBOutlet weak var lastNameTextFieldOnFVC: UITextField!
    @IBOutlet weak var firstNameLabelOnFVC: UILabel!
    @IBOutlet weak var middleNameLabelOnFVC: UILabel!
    @IBOutlet weak var lastNameLabelOnFVC: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.firstNameTextFieldOnFVC.text = ""
        self.middleNameTextFieldOnFVC.text = ""
        self.lastNameTextFieldOnFVC.text = ""
    }
    @IBAction func btnClickToNavigateSVC(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let firstNamedataToBePassed = self.firstNameTextFieldOnFVC.text
        let middleNamedataToBePassed = self.middleNameTextFieldOnFVC.text
        let lastNamedataToBePassed = self.lastNameTextFieldOnFVC.text
        secondViewController.firstNamedataFromFirstViewController = firstNamedataToBePassed
        secondViewController.middleNamedataFromFirstViewController = middleNamedataToBePassed
        secondViewController.lastNamedataFromFirstViewController = lastNamedataToBePassed
        secondViewController.delegateSVC = self
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
func firstNamepassDataToFirstViewController(textToPass: String) {
    self.firstNameLabelOnFVC.text = textToPass
}

func middleNamepassDataToFirstViewController(textToPass: String) {
    self.middleNameLabelOnFVC.text = textToPass
}

func lastNamepassDataToFirstViewController(textTopass: String) {
    self.lastNameLabelOnFVC.text = textTopass
}
    



}
