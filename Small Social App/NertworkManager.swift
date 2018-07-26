//
//  NertworkManager.swift
//  Small Social App
//
//  Created by Dev mobile on 2018-06-04.
//  Copyright © 2018 Skrumble. All rights reserved.
//

import UIKit
import Alamofire

class NertworkManager: NSObject {
    
//    static let sharedInstance:NertworkManager = NertworkManager()
    
    
    
    static func getPosts(callback: @escaping ([[String:Any]])->()){
        
        Alamofire.request("http://www.somaku.com/posts").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value as? [[String:Any]] {
                
                //print("JSON: \(json)") // serialized json response
                callback(json)
            }
            else{
                callback([[:]])
            }
        }
    }

}
