//
//  PropertyListValue.swift
//  HelperKit
//
//  Created by Matt Croxson on 11/8/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

/// Represents an object that can be stored in a property list.
public protocol PropertyListValue: Decodable {}

extension String: PropertyListValue {}
extension Int: PropertyListValue {}
extension Data: PropertyListValue {}
extension Array: PropertyListValue where Element: PropertyListValue {}
extension Dictionary: PropertyListValue where Key: StringProtocol & Decodable, Value: PropertyListValue {}
extension Date: PropertyListValue {}
extension Float: PropertyListValue {}
extension Double: PropertyListValue {}
extension Bool: PropertyListValue {}
