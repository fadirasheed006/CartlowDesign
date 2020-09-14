//
//  HeroApi.swift
//  Dota
//
//  Created by macbook on 09/09/2020.
//  Copyright © 2020 fahad rasheed. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class HomeResponseApi {
    //web request with alamofire and swiftyjason
    func getHomeResponse(completion: @escaping HomeResponseCompletion ){
        
        guard  let url = URL(string: BASE_URl) else {return}
        
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.result.error {
                debugPrint(error.localizedDescription)
                completion(nil)
                return
            }
            guard let data = response.data else {return completion(nil)}
            
            
            do {
                let homeData = try JSONDecoder().decode(HomeResponse.self, from: data)
                
                completion(homeData)
            }catch {
                debugPrint(error.localizedDescription)
                completion(nil)
            }
            
        }
        
        
    }
}
