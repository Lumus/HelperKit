//
//  DateFormatProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/7/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol DateFormatProvider {

    /// Returns a formatterd string for the provided date.
    /// - Parameter from: Date to get string for.
    func string(from: Date) -> String
}
