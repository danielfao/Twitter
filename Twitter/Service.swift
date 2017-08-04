//
//  Service.swift
//  Twitter
//
//  Created by Daniel Oliveira on 8/4/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

//Singleton
struct Service {
    
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    static let shareInstance = Service()
    
    func fetchHomeFeed(completion: @escaping (HomeDatasource?, Error?) -> () ) {
        let request: APIRequest<HomeDatasource, JSONError> = tron.request("twitter/home")
        
        request.perform(withSuccess: {(homeDatasource) in
            completion(homeDatasource, nil)
        }) { (err) in
            completion(nil, err)
        }
    }
    
    class JSONError: JSONDecodable {
        required init(json: JSON) throws {
            print("JSON ERROR")
        }
    }
}
