//
//  FlowCoordinator.swift
//  NewRyoko
//
//  Created by Matt Croxson on 16/5/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import UIKit

public protocol FlowCoordinator: class {

    /// The root view controller for the flow coordinator
    var rootViewController: UIViewController { get }

    /// Handles actions, or passes them to the parent action if unhandled.
    ///
    /// - Parameters:
    ///     - action: Action to be handled.
    ///     - source: The source of the action.
    /// - Returns: Bool stating whether the action has handled.
    /// - Important: *DO NOT* attempt to call the parent coordinator's `handle(action: _)` method when handling actions
    ///              as this may cause a race condition. Always call the parent coordinator's `handle(action: _)`
    ///              method directly when required.
    @discardableResult
    func handle(action: FlowCoordinatorActionable, source: FlowCoordinatorActionSource) -> Bool

    /// Forwards an action to be handled by all flow coordinators
    ///
    /// Passes the action up the flow coordinator tree until it reaches the main flow coordinator, which then
    /// passes the action down through all children
    ///
    /// - Parameters:
    ///     - action: Action to be propagated.
    /// - Precondition: A `.broadcast` action cannot be propagated using this function. Attempting to do so could
    /// result in a recursive loop. Calling this action with a `.broadcast` action will do nothing in production.
    /// Use `handle(action: _)` to handle this action instead.
    func broadcast(_ action: FlowCoordinatorActionable)
}
