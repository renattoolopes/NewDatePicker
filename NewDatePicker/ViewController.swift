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
    @IBOutlet private weak var inLineButton: UIButton!
    @IBOutlet private weak var compactButton: UIButton!
    @IBOutlet private weak var automaticButton: UIButton!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDatePicker(withStyle: .wheels)
    }
    
    func setupDatePicker(withStyle style: UIDatePickerStyle) {
        datePickerView.preferredDatePickerStyle = style
    }
    
    // MARK: - Actions
    @IBAction private func touchedInLineButton() {
        setupDatePicker(withStyle: .inline)
    }
    
    @IBAction private func touchedCompactButton() {
        setupDatePicker(withStyle: .compact)
    }
    
    @IBAction private func touchedWheelsButton() {
        setupDatePicker(withStyle: .wheels)
    }
}

