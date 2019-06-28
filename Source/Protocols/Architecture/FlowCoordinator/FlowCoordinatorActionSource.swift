//
//  FlowCoordinatorActionSource.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

/// Represents the source of a flow coordinator action.
public enum FlowCoordinatorActionSource {

    /// - pushNotification: Action was triggered by the user tapping a push notification.
    case pushNotification

    /// - universalLink: Action was triggered by a universal or deep link being opened.
    case universalLink

    /// - direct: Action was called directly (e.g. from a view controller).
    case direct

    /// - broadcast: Action was broadcast from a another flow coordinator
    case broadcast
}
