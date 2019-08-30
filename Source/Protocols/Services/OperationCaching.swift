//
//  OperationCaching.swift
//  HelperKit
//
//  Created by Matt Croxson on 30/8/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

/// Provides methods required by an object that caches operations until chaching is no longer required
public protocol OperationCaching {

    /// Inserts a block to be cached. If caching has ended, the block is executed immediately. All cached operations
    /// should expect to execute on the main queue.
    ///
    /// - Parameter block: Block to be cached
    func insertOperation(_ block: @escaping () -> Void)

    /// Triggers the object to execute all cached blocks, and sets the cacher to automatically execute any newly
    /// inserted blocks.
    ///
    /// - Parameter completion: Completion handler to called when the method completes.
    func endCaching(completion: (() -> Void)?)
}
