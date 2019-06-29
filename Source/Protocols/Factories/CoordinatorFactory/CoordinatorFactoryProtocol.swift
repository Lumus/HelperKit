//
//  CoordinatorFactoryProtocol.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol CoordinatorFactoryProtocol {
    func makeRootCoordinator<T: RootFlowCoordinator>(type: T.Type) -> T?
    func makeCoordinator<T: FlowCoordinator>(type: T.Type, parent: FlowCoordinator) -> T?
}
