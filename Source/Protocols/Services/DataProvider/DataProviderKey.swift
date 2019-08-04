//
//  DataProviderKey.swift
//  HelperKit
//
//  Created by Matt Croxson on 4/8/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol DataProviderKey {
    var storageKey: String { get }
    var source: DataProviderSource { get }
}

public enum DataProviderSource {
    case userDefaults, keychain
}
