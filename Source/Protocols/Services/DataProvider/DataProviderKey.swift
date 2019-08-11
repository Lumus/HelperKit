//
//  DataProviderKey.swift
//  HelperKit
//
//  Created by Matt Croxson on 4/8/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public struct DataProviderKey<T: PropertyListValue> {
    public let storageKey: String
    public let source: DataProviderSource
    public let defaultValue: T?

    public init(_ storageKey: String,
                source: DataProviderSource,
                valueType: T.Type,
                defaultValue: T?) {
        self.storageKey = storageKey
        self.source = source
        self.defaultValue = defaultValue
    }
}

public enum DataProviderSource {
    case userDefaults, keychain
}
