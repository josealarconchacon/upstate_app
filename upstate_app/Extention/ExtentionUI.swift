//
//  ExtentionUI.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/23/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

extension UITextField {
    func fieldUI(textField: UITextField, image: UIImage) {
        layer.cornerRadius = 20.0
        layer.shadowOpacity = 0.1
        layer.borderColor = UIColor.lightGray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.borderWidth = 1
        let iconView = UIImageView(frame: CGRect(x: 10, y: 10, width: 15, height: 15)) // set your Own size
        iconView.image = image
        let container: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
        container.addSubview(iconView)
        leftView = container
        leftViewMode = .always
        self.tintColor = .lightGray
    }
}

extension UIButton {
    func button() {
        layer.cornerRadius = 20.0
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowOpacity = 0.1
        layer.backgroundColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1).cgColor
    }
}

extension UIView {
    func viewConstraint(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
