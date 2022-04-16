//
//  Model.swift
//  ApiNewsTest1604
//
//  Created by admin on 16.04.2022.
//

import Foundation


struct PostList: Codable {
    let posts: [PostDetails]
}


struct PostDetails: Codable {
    let likes_count: Int
    let postId: Int
    let preview_text: String
    let timeshamp: Int?
    
//    init.self(likes_count: Int,  postId: Int, preview_text: String, timeshamp: Int?)
}
