//
//  UpdateStore.swift
//  DesignCode
//
//  Created by zsy on 2020/2/17.
//  Copyright © 2020 zsy. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}


