//
//  Result.swift
//  NewsApp-VIP
//
//  Created by Burak YAZICI on 29/08/2022.
//

import Foundation

public enum Result<Value> {
    case success(Value)
    case failure(Error)
}
