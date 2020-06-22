//
//  FTButton.swift
//  FirebaseTutorial
//
//  Created by Admin on 21/06/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class FTButton: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    private func setup() {
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.titleLabel?.textColor = .white
        self.layer.cornerRadius = 55 / 2
        self.layer.borderWidth = 1.0
    }
}

class RedFTButton: FTButton {
    
    required init?(coder: NSCoder) {
           super.init(coder: coder)
       }
       
       override init(frame: CGRect) {
           super.init(frame: frame)
           self.setup()
       }
       
       private func setup() {
        self.backgroundColor = UIColor(named: "RedColor")
        self.layer.borderColor = UIColor(named: "RedColor")?.cgColor
       }
}

class BlueFTButton: FTButton {
    
    required init?(coder: NSCoder) {
           super.init(coder: coder)
       }
       
       override init(frame: CGRect) {
           super.init(frame: frame)
           self.setup()
       }
       
       private func setup() {
        self.backgroundColor = UIColor(named: "BlueColor")
        self.layer.borderColor = UIColor(named: "BlueColor")?.cgColor
       }
}
