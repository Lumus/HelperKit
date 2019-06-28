//
//  ViewControllerFactoryProtocol.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol ViewControllerFactoryProtocol {
    func makeViewController<T: UIViewController>(_ viewControllerType: T.Type, flowCoordinator: FlowCoordinator) -> T?
    func makeErrorViewController(with error: Error?, flowCoordinator: FlowCoordinator) -> UIViewController
}
