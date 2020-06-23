//
//  FTTextField.swift
//  FirebaseTutorial
//
//  Created by Admin on 21/06/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class FTTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.clipsToBounds = true
        self.font = UIFont.systemFont(ofSize: 16)
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor(named: "GreyColor")?.cgColor
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
