//
//  Data.swift
//  DesignCode
//
//  Created by zsy on 2020/2/22.
//  Copyright © 2020 zsy. All rights reserved.
//

import SwiftUI

struct Post: Codable, Identifiable {
    let id  = UUID()
    var title: String
    var body: String
}

class Api {
    func getPosts(completion: @escaping ([Post]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else {return}
           // JSONDecoder是用来将JSON字符串转为模型
            let posts = try! JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(posts)
            }
        }
    .resume()   // 如果任务被挂起，则继续该任务。
    }
}
