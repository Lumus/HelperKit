//
//  ChildFlowCoordinator.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol ChildFlowCoordinator: FlowCoordinator {
    var parentFlowCoordinator: FlowCoordinator { get }

    init(parentFlowCoordinator: FlowCoordinator,
         viewControllerFactory: ViewControllerFactoryProtocol,
         coordinatorFactory: CoordinatorFactoryProtocol)

}

public extension ChildFlowCoordinator {
    func broadcast(_ action: FlowCoordinatorActionable) {
        parentFlowCoordinator.handle(action: action, source: .broadcast)
    }
}
