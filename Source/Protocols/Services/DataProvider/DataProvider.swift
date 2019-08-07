//
//  DataProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol DataProvider {
    func getValue<T>(key: DataProviderKey<T>) -> Result<T, DataProviderError> where T: PropertyListValue
    func setValue<T>(_ value: T?, for key: DataProviderKey<T>) where T: PropertyListValue
    func removeValue<T>(for key: DataProviderKey<T>) where T: PropertyListValue
    func reset()
}

public enum DataProviderError: LocalizedError {
    /// The item identifier could not be found for the provided object type.
    case notFound(identifier: String)

    /// The object type is not available in the data service.
    case unknownObject(objectType: Any)

    /// An array of objects of the provided type failed to populate.
    case populateFailed(objectType: Any)

    /// Object type returned is incompatible with the object type requested.
    case incompatibleObject

    /// General error.
    case general(error: Error)

    public var errorDescription: String? {
        switch self {
        case let .notFound(identifier): return "Item with identifier \"\(identifier)\" could not be found."
        case let .unknownObject(objectType): return "Item type \"\(objectType.self)\" not available in data service."
        case let .populateFailed(objectType): return "Object array for type \"\(objectType.self)\" failed to populate."
        case .incompatibleObject: return "Object type returned is incompatible with requested type."
        case let .general(error): return error.localizedDescription
        }
    }
}

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
