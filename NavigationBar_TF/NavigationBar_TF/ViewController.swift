//
//  ViewController.swift
//  NavigationBar_TF
//
//  Created by 위대연 on 2020/09/27.
//

import UIKit

class ViewController: UIViewController {
    var tf = UITextField()
    @IBOutlet weak var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = false
        tf.delegate = self
        tf.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        self.navigationItem.titleView = tf
    }
}
extension ViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.label.text = textField.text
        self.tf.text = ""
        self.tf.endEditing(true)
        return true
    }
}

