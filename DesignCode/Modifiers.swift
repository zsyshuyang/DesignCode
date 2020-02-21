//
//  Modifiers.swift
//  DesignCode
//
//  Created by zsy on 2020/2/18.
//  Copyright © 2020 zsy. All rights reserved.
//

import SwiftUI

// 自定义阴影
struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
           .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 12)
           .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
    }
}

// 自定义字体
struct FontModifier: ViewModifier {
    var style: Font.TextStyle = .body
    
    func body(content: Content) -> some View {
        content
            .font(.system(style, design: .default))
    }
}

// 引用外部字体，需在info.plist添加相关信息
struct CustomFontModifier: ViewModifier {
    var size: CGFloat = 28
    
    func body(content: Content) -> some View {
        content
            .font(.custom("WorkSans-Bold", size: size))
    }
}
