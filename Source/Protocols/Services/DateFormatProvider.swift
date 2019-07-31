//
//  DateFormatProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/7/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol DateFormatProvider {

    /// Returns a formatted string for the provided date.
    /// - Parameter from: Date to get string for.
    /// - Returns: Formatted string.
    func string(from: Date) -> String

    /// Returns a Date from an ISO8601 formatted string.
    /// - Parameter iso8601String: ISO8601 formatted string.
    /// - Returns: Date, or nil if the ISO8601 string cannot be decoded.
    func date(from iso8601String: String) -> Date?

    /// Returns a formatted string for the provided ISO8601 formatted string.
    /// - Parameter iso8601String: ISO8601 formatted string.
    /// - Returns: Formatted string, or nil of the ISO8601 string cannot be decoded.
    func string(from iso8601String: String) -> String?
}
