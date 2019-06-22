//
//  Reusable.swift
//  HelperKit
//
//  Created by Matt Croxson on 22/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import UIKit.UIView

/// Helpers for reusable views.
protocol Reusable: NibCreatable {}

extension Reusable {
    static var reuseIdentifier: String {
         return nibName
    }
}
