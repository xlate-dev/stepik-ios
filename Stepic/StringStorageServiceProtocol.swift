//
//  StringStorageServiceProtocol.swift
//  SplitTests
//
//  Created by Alex Zimin on 15/06/2018.
//  Copyright © 2018 Akexander. All rights reserved.
//

import Foundation

protocol StringStorageServiceProtocol {
    func save(string: String?, for key: String)
    func getString(for key: String) -> String?
}
