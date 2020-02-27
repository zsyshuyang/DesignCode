//
//  TabBar.swift
//  DesignCode
//
//  Created by zsy on 2020/2/17.
//  Copyright © 2020 zsy. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            // 添加Home页面到选项卡
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            CourseList().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Courses")
            }
            UpdateList().tabItem {
                Image(systemName: "bell")
                Text("Updates")
            }
        }
        .edgesIgnoringSafeArea(.top)   // 忽略顶部安全区域
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        // 自定义预览设备,选中previewDevice，
        // option键+鼠标右击，可以查看所有设备列表
        Group {
            //TabBar().previewDevice("iPhone 8")
            TabBar().previewDevice("iPhone 11")
        }
    }
}
