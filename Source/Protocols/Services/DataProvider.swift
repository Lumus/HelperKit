//
//  DataProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol DataProvider {
    func getObject<T>(identifier: Int,
                      completion: @escaping (Result<T, DataProviderError>) -> Void) where T: Decodable

    func getObject<T>(identifier: String,
                      completion: @escaping (Result<T, DataProviderError>) -> Void) where T: Decodable
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
