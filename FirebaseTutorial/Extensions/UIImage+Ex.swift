//
//  UIImage+Ex.swift
//  FirebaseTutorial
//
//  Created by Admin on 22/06/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit


extension UIImage {
    static func localImage(_ name: String, template: Bool = false) -> UIImage {
        var image = UIImage(named: name)!
        if template {
            image = image.withRenderingMode(.alwaysTemplate)
        }
        return image
    }
}

