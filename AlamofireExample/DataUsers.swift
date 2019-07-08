//
//  DataMap.swift
//  AlamofireExample
//
//  Created by Josue J Maqueda Flores on 3/30/19.
//  Copyright © 2019 Josue J Maqueda Flores. All rights reserved.
//

import Foundation
import ObjectMapper

struct DataUsers : Mappable {
    var data : Data?
    var message : String?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map)
    {
        data <- map["data"]
        message <- map["message"]
    }
}


struct Data : Mappable {
    var usuarios : [Usuarios]?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map)
    {
        
        usuarios <- map["usuarios"]
    }
}

struct Usuarios : Mappable {
    var usuario : String?
    var pass : Int?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        usuario <- map["usuario"]
        pass <- map["pass"]
    }
}
