//
//  ViewController.swift
//  week-3-homework-1
//
//  Created by Mehmet Ali Demir on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didTapButton() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = { text in
            self.textLabel.text = text
        }
        present(vc, animated: true)
    }

}

