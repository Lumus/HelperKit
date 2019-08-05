//
//  CacheProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 4/8/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public typealias CacheProviderCompletion = () -> Void

public protocol CacheProvider {
    func getObject<T>(identifier: Int) -> Result<T, CacheProviderError> where T: Codable
    func getObject<T>(identifier: String) -> Result<T, CacheProviderError> where T: Codable
    func allObjects<T>() -> Result<T, CacheProviderError> where T: Codable
    func populate(completion: @escaping CacheProviderCompletion)
}

public enum CacheProviderError: LocalizedError {
    /// The item identifier could not be found for the provided object type.
    case notFound(identifier: String)

    /// The object type is not available in the cache service.
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
        case let .unknownObject(objectType): return "Item type \"\(objectType.self)\" not available in cache service."
        case let .populateFailed(objectType): return "Object array for type \"\(objectType.self)\" failed to populate."
        case .incompatibleObject: return "Object type returned is incompatible with requested type."
        case let .general(error): return error.localizedDescription
        }
    }
}
