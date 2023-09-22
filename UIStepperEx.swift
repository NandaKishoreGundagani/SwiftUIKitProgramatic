//
//  File.swift
//  GroceryApp
//
//  Created by APPLE on 8/30/23.
//

import Foundation
import UIKit

import UIKit

extension UIStepper {
    convenience init(minimumValue: Double, maximumValue: Double, initialValue: Double, stepValue: Double, labelText: String) {
        self.init()

        self.minimumValue = minimumValue
        self.maximumValue = maximumValue
        self.value = initialValue
        self.stepValue = stepValue

        let label = UILabel()
        label.text = labelText
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false

        let countLabel = UILabel()
        countLabel.text = "\(Int(initialValue))"
        countLabel.textColor = .white
        countLabel.translatesAutoresizingMaskIntoConstraints = false

        let stackView = UIStackView(arrangedSubviews: [label, self, countLabel])
        stackView.spacing = 10
        stackView.axis = .horizontal
        stackView.alignment = .center

        addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])

        addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
        countLabelView = countLabel
    }

    private struct AssociatedKeys {
        static var countLabel = "countLabel"
    }

    private var countLabelView: UILabel? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.countLabel) as? UILabel
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.countLabel, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    @objc private func stepperValueChanged() {
        countLabelView?.text = "\(Int(value))"
    }
}
