//
//  SecondViewController.swift
//  assignment1
//
//  Created by Mac on 04/11/22.
//

import UIKit
protocol BackDataPassingProtocol{
    func firstNamepassDataToFirstViewController(textToPass:String)
    func middleNamepassDataToFirstViewController(textToPass:String)
    func lastNamepassDataToFirstViewController(textTopass:String)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var firstNameLabelOnSVC: UILabel!
    @IBOutlet weak var middleNameLabelOnSVC: UILabel!
    @IBOutlet weak var lastNameLabelOnSVC: UILabel!
    @IBOutlet weak var firstNameTextFieldOnSVC: UITextField!
    @IBOutlet weak var middleNameTextFieldOnSVC: UITextField!
    @IBOutlet weak var lastNameTextFieldOnSVC: UITextField!
    
    var firstNamedataFromFirstViewController:String?
    var middleNamedataFromFirstViewController:String?
    var lastNamedataFromFirstViewController:String?
    var delegateSVC : BackDataPassingProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.firstNameLabelOnSVC.text = firstNamedataFromFirstViewController
        self.middleNameLabelOnSVC.text = middleNamedataFromFirstViewController
        self.lastNameLabelOnSVC.text = lastNamedataFromFirstViewController
        navigationItem.hidesBackButton = true
    }
    @IBAction func btnClickToNavigateFVC(_ sender: Any) {
        guard let delegateOnSecondViewController = delegateSVC else{
            print("Delegate not Found")
            return
        }
        let firstnameRetrivedFromTextField = self.firstNameTextFieldOnSVC.text
        let middleRetrivedFromTextField = self.middleNameTextFieldOnSVC.text
        let lastRetrivedFromTextField = self.lastNameTextFieldOnSVC.text
        
        delegateOnSecondViewController.firstNamepassDataToFirstViewController(textToPass: firstnameRetrivedFromTextField!)
        delegateOnSecondViewController.middleNamepassDataToFirstViewController(textToPass: middleRetrivedFromTextField!)
        delegateOnSecondViewController.lastNamepassDataToFirstViewController(textTopass: lastRetrivedFromTextField!)
        navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
