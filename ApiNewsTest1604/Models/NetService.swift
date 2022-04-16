//
//  NetService.swift
//  ApiNewsTest1604
//
//  Created by admin on 16.04.2022.
//

import Foundation

enum NetworkRequest {
    case postList
    case postById(id: [String])
    
    var path: String {
        switch self {
        case .postList:
            return "aShaforostov/jsons/master/api/main.json"
        case .postById(let id):
            return "aShaforostov/jsons/master/api/posts/\(id).json"
        }
    }
}

class NetworkService {
    
    let serverUrl = "https://raw.githubusercontent.com/"
    

    func getPostList(completion: @escaping(([PostDetails])->())) {
      
      let urlString = serverUrl + NetworkRequest.postList.path
      let url = URL(string: urlString)!
      let session = URLSession.shared
      let task = session.dataTask(with: url) { (data, response, error) in
      guard let dataResponse = data, error == nil else {
          print(error?.localizedDescription ?? "Response Error")
          return }
       do {
        let decoder = JSONDecoder()
        let model = try decoder.decode(PostList.self, from: dataResponse)
        completion(model.posts)
        print(model.posts)
       } catch _ {
        print(data!)
       }
      }
      task.resume()
     }
    }
