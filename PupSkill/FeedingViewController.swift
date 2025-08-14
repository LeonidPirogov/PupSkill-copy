//
//  FeedingViewController.swift
//  PupSkill
//
//  Created by Leonid on 13.08.2025.
//

import UIKit

class FeedingViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var yearsTextField: UITextField!
    @IBOutlet var monthsTextField: UITextField!
    
    @IBOutlet var spoonsLabel: UILabel!
    @IBOutlet var mealsLabel: UILabel!
    
    private lazy var inputFields: [UITextField] = [
        heightTextField, weightTextField, yearsTextField, monthsTextField
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInputs()
        setupAccessoryBars()
        setupHideKeyboardGesture()
    }
    
    private func setupInputs() {
        [heightTextField, weightTextField].forEach { $0?.keyboardType = .decimalPad }
        [yearsTextField, monthsTextField].forEach { $0?.keyboardType = .numberPad }

        inputFields.enumerated().forEach { index, field in
            field.delegate = self
            field.tag = index
        }
    }
    
    private func setupAccessoryBars() {
        inputFields.enumerated().forEach { index, field in
            let isLast = (index == inputFields.count - 1)
            field.inputAccessoryView = makeToolbar(isLast: isLast)
        }
    }
    
    private func makeToolbar(isLast: Bool) -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()

        var items: [UIBarButtonItem] = []
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)

        if isLast {
            let done = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneTapped))
            items = [spacer, done]
        } else {
            let next = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextTapped))
            items = [spacer, next]
        }

        toolbar.items = items
        return toolbar
    }

    @objc private func nextTapped() {
        guard let current = inputFields.first(where: { $0.isFirstResponder }) else { return }
        let nextIndex = current.tag + 1
        if nextIndex < inputFields.count {
            inputFields[nextIndex].becomeFirstResponder()
        } else {
            view.endEditing(true)
        }
    }

    @objc private func doneTapped() {
        view.endEditing(true)
        calculateFeedingResult()
    }
    
    
    private func setupHideKeyboardGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        tapGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGesture)
    }
        
    @objc private func hideKeyboard() {
        view.endEditing(true)
    }

    private func calculateFeedingResult() {
        guard
            let height = Double(heightTextField.text ?? ""),
            let weight = Double(weightTextField.text ?? ""),
            let year = Int(yearsTextField.text ?? "0"),
            let months = Int(monthsTextField.text ?? "0")
        else {
            showAlertMissingData()
            return
        }

        let normalizedMonths = min(max(months, 0), 11)

        let profile = DogProfile(heightCm: height, weightKg: weight, ageYears: year, ageMonths: normalizedMonths)
        let feedingResult = FeedingCalculator.calculate(profile: profile)

        spoonsLabel.text = "Spoons: \(formatDecimal(feedingResult.spoonsPerMeal))"
        mealsLabel.text = "Meals: \(feedingResult.mealsPerDay)"
    }
    
    private func showAlertMissingData() {
        let alert = UIAlertController(
            title: nil,
            message: "Enter the dog's data for calculation",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == monthsTextField {
            calculateFeedingResult()
            textField.resignFirstResponder()
        }
        return true
    }

    private func formatDecimal(_ number: Double) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.minimumFractionDigits = 1
        numberFormatter.maximumFractionDigits = 1
        numberFormatter.decimalSeparator = "."
        return numberFormatter.string(from: NSNumber(value: number)) ?? "\(number)"
    }
}
