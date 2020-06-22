//
//  FTTitleLabel.swift
//  FirebaseTutorial
//
//  Created by Admin on 22/06/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class FTTitleLabel: UILabel {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    private func setup() {
        self.font = UIFont.boldSystemFont(ofSize: 30)
        self.textColor = UIColor(named: "RedColor")
    }
}
