//
//  SecondViewController.swift
//  week-3-homework-1
//
//  Created by Mehmet Ali Demir on 20.12.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    public var completionHandler: ((String?) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func didTapSend(_ sender: Any) {
        completionHandler?(textField.text)
        dismiss(animated: true)
    }
}
