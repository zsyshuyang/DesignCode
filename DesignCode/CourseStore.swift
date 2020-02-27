//
//  CourseStore.swift
//  DesignCode
//
//  Created by zsy on 2020/2/22.
//  Copyright © 2020 zsy. All rights reserved.
//

import SwiftUI
import Contentful
import Combine

let client = Client(
    spaceId: "g2u7upot2atv",
    environmentId: "master",  // 缺省值为"master",可不写
    accessToken: "ozk0Yep648m03q2RODMha97jJiEzvkyMuba3CrRJ2XY"
)

func getArray(id: String, completion: @escaping([Entry]) -> ()) {
    let query = Query.where(contentTypeId: id)
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                completion(array.items)
            }
        case .error(let error):
            print(error)
        }
    }
}

class CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData
    
    init() {
        getArray(id: "course") { (items) in
            items.forEach { (item) in
                self.courses.append(Course(
                    title: item.fields["title"] as! String,
                    subtitle: item.fields["subtitle"] as! String,
                    image: #imageLiteral(resourceName: "Background1"),
                    logo: #imageLiteral(resourceName: "Logo1"),
                    color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1),
                    show: false))
            }
        }
    }
}

