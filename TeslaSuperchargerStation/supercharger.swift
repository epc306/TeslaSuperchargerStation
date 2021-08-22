//
//  supercharger.swift
//  TeslaSuperchargerStation
//
//  Created by water on 2021/8/21.
//

import Foundation

struct Supercharger {
    let name:String
    let address:String
    let intro:String
}

enum sections:String {
    case north = "北部地區"
    case center = "中部地區"
    case south = "南部地區"
    case east = "東部地區"
}
