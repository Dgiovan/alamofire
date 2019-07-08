//
//  AsyncClient.swift
//  AlamofireExample
//
//  Created by Josue J Maqueda Flores on 3/30/19.
//  Copyright © 2019 Josue J Maqueda Flores. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class AsyncClient
{
    class func getRequestExecute<T:Mappable>(_ url:URL, completion:@escaping (_ dataResponse:T) -> Void)
    {
        Alamofire.request(url).responseObject { (response:DataResponse<T>) in
            completion(response.result.value!)
        }
    }
}
