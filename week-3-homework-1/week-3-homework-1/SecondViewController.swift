//
//  SecondViewController.swift
//  week-3-homework-1
//
//  Created by Mehmet Ali Demir on 20.12.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!


    // second viewcontroller kapatıldığında completionHandler'ı çağır
    public var completionHandler: ((String?, String?, String?) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func didTapSend(_ sender: Any) {
        // textField'deki textler ile completionHandler'ı çağır
        completionHandler?(nameTextField.text, cityTextField.text, ageTextField.text)
  

        // second viewcontroller'i kapat
        dismiss(animated: true)
    }
}
