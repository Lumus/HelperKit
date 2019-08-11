//
//  CacheProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 4/8/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public typealias CacheProviderResult<T> = Result<T, CacheProviderError> where T: Codable
public typealias CacheProviderCompletion = () -> Void

public protocol CacheProvider {
    func getObject<T>(key: CacheProviderKey<T>, identifier: Int) -> CacheProviderResult<T>
    func getObject<T>(key: CacheProviderKey<T>, identifier: String) -> CacheProviderResult<T>
    func allObjects<T>(key: CacheProviderKey<T>) -> CacheProviderResult<T>
    func populate(completion: @escaping CacheProviderCompletion)
}
