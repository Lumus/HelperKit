//
//  CacheProviderKey.swift
//  HelperKit
//
//  Created by Matt Croxson on 7/8/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public struct CacheProviderKey<T: Codable> {
    public let cacheKey: String
    public let defaultValue: T?

    public init(_ cacheKey: String,
                valueType: T.Type,
                defaultValue: T?) {
        self.cacheKey = cacheKey
        self.defaultValue = defaultValue
    }
}
