//
//  CacheProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 4/8/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public typealias CacheProviderCompletion = () -> Void

public protocol CacheProvider: DataProvider {
    func populate(completion: @escaping CacheProviderCompletion)
}
