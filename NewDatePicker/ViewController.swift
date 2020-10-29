//
//  ViewController.swift
//  NewDatePicker
//
//  Created by Renato Lopes on 28/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private weak var datePickerView: UIDatePicker!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setupDatePicker(withStyle style: UIDatePickerStyle) {
        if #available(iOS 14, *) {
            datePickerView.preferredDatePickerStyle = style
        } else {
            datePickerView.preferredDatePickerStyle = .automatic
        }
    }
}

