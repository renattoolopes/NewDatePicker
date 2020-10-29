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
        setupDatePicker(withStyle: .automatic)
    }
    
    func setupDatePicker(withStyle style: UIDatePickerStyle) {
        if #available(iOS 14, *) {
            datePickerView.preferredDatePickerStyle = style
        } else {
            datePickerView.preferredDatePickerStyle = .automatic
            guard style != .automatic else { return }
            showAlert(withTitle: "Unavailable", andMessage: "This style is not available in current IOS Version")
        }
    }
    
    // MARK: - Private Methods
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alertController: UIAlertController = UIAlertController(title: title,
                                                                   message: message,
                                                                   preferredStyle: .alert)
        let okAction: UIAlertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    // MARK: - Actions
    
    @IBAction private func touchedInLineButton() {
        setupDatePicker(withStyle: .inline)
    }
    
    @IBAction private func touchedCompactButton() {
        setupDatePicker(withStyle: .compact)
    }
    
    @IBAction private func touchedAutomaticButton() {
        setupDatePicker(withStyle: .automatic)
    }
}

