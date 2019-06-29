//
//  DataProvider.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol DataProvider {
    func getObject<T>(_ type: T.Type, identifier: Int, completion: @escaping (Result<T, Error>) -> Void) where T: Decodable
    func getObject<T>(_ type: T.Type, identifier: String, completion: @escaping (Result<T, Error>) -> Void) where T: Decodable
}
