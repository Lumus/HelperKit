//
//  DataProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public typealias DataProviderResult<T> = Result<T?, DataProviderError> where T: PropertyListValue

public protocol DataProvider {
    func getValue<T>(key: DataProviderKey<T>) -> DataProviderResult<T>
    func setValue<T>(_ value: T?, for key: DataProviderKey<T>) where T: PropertyListValue
    func removeValue<T>(for key: DataProviderKey<T>) where T: PropertyListValue
    func reset()
}
