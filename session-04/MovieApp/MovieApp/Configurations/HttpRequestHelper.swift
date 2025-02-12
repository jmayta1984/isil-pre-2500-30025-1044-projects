//
//  HttpRequestHelper.swift
//  MovieApp
//
//  Created by user272495 on 2/5/25.
//

import Foundation

class HttpRequestHelper {
    func GET(url: String, completion: @escaping (Bool, Data?, String? ) -> Void )  {
        
        guard let url = URL(string: url) else {
            completion(false, nil, "Error: wrong URL")
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        // Singleton
        let session = URLSession.shared
        
        session.dataTask(with: urlRequest) { data, response, error in
            
            // Validar que no haya error
            guard error == nil else {
                print("Error: problem calling GET")
                completion(false, nil, "Error: problem calling GET")
                return
            }
            
            // Validar que haya respuesta satisfactoria (200)
            guard let response = response as? HTTPURLResponse, response.statusCode == 200  else {
                print("Error: HTTP request failed")
                completion(false, nil, "Error: HTTP request failed")
                return
            }
            
            // Validar que haya data
            guard let data = data else {
                print("Error: no data")
                completion(false, nil,"Error: no data" )
                return
            }
            completion(true, data, nil)
            
        }.resume()
        
    }
}
