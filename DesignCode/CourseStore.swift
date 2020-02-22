//
//  CourseStore.swift
//  DesignCode
//
//  Created by zsy on 2020/2/22.
//  Copyright © 2020 zsy. All rights reserved.
//

import SwiftUI
import Contentful

let client = Client(spaceId: "g2u7upot2atv", accessToken: "U3HsnVSWJxEM0CgfY5YPHGjiZKEd68N8YNky1w2xJWc")

func getArray() {
    let query = Query.where(contentTypeId: "course")
    
    client.fetchArray(of: Entry.self, matching: query) {result in
        print(result)
    }
}
