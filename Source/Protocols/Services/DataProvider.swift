//
//  DataProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol DataProvider {
    func getObject<T>(_ type: T.Type, identifier: Int, completion: @escaping (Result<T, DataProviderError>) -> Void) where T: Decodable
    func getObject<T>(_ type: T.Type, identifier: String, completion: @escaping (Result<T, DataProviderError>) -> Void) where T: Decodable
}

public enum DataProviderError: LocalizedError {
    case notFound(identifier: String)
    case unknownObject(objectType: Any)
    case populateFailed(objectType: Any)
    case incompatibleObject
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
