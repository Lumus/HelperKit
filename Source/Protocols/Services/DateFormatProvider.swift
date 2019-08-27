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
    /// - Parameter configuration: Configuration for the date formatter.
    /// - Returns: Date to get string for.
    func string(from: Date,
                configuration: DateFormatProviderConfiguration) -> String

    /// Returns a formatted string for the provided ISO8601 formatted string.
    /// - Parameter iso8601String: ISO8601 formatted string.
    /// - Parameter configuration: Configuration for the date formatter.
    /// - Returns: Formatted string, or nil if the ISO8601 string cannot be decoded.
    func string(from iso8601String: String?,
                configuration: DateFormatProviderConfiguration) -> String?

    /// Returns a Date from an ISO8601 formatted string.
    /// - Parameter iso8601String: ISO8601 formatted string.
    /// - Returns: Date, or nil if the ISO8601 string cannot be decoded.
    func date(from iso8601String: String?) -> Date?

}

public struct DateFormatProviderConfiguration {
    public static let `default` = DateFormatProviderConfiguration(dateStyle: .medium, timeStyle: .short)

    public let dateStyle: DateFormatter.Style
    public let timeStyle: DateFormatter.Style

    public init(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) {
        self.dateStyle = dateStyle
        self.timeStyle = timeStyle
    }
}
