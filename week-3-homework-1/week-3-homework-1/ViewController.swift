//
//  ViewController.swift
//  week-3-homework-1
//
//  Created by Mehmet Ali Demir on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var cityTextLabel: UILabel!
    @IBOutlet weak var ageTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didTapButton() {
        // Storyboard'dan SecondViewController örneği al
        let vc = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController

        vc.modalPresentationStyle = .fullScreen

        // secondview controller kapatıldığında, textlabellar'ı güncellemek için completionHandler'i kullan
        vc.completionHandler = { [weak self] text1, text2, text3 in
            self?.nameTextLabel.text = "Name: \(String(describing: text1!)) "
            self?.cityTextLabel.text = "City : \(String(describing: text2!)) "
            self?.ageTextLabel.text = "Age : \(String(describing: text3!)) "
        }

        //  second viewcontroller'i göster
        present(vc, animated: true)
    }

}

