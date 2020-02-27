//
//  MenuView.swift
//  DesignCode
//
//  Created by zsy on 2020/2/16.
//  Copyright © 2020 zsy. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack (spacing: 16) {
                Text("Meng - 28% complete")
                    .font(.caption)   // caption 说明
                
                // 创建进度条
                Color.white
                    .frame(width: 38, height: 6)
                    .cornerRadius(3)
                    .frame(width: 130, height: 4, alignment: .leading)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.08))
                    .cornerRadius(3)
                    .padding()
                    .frame(width: 150, height: 24)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1))
                    .cornerRadius(10)
                    
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Billing", icon: "creditcard")
                MenuRow(title: "Sign out", icon: "person.crop.circle")
            }
            .frame(maxWidth: .infinity) // 设置最大宽度：无限大
            .frame(height: 300)
            .background(BlurView(style: .systemMaterial))
//            .background(LinearGradient(gradient: Gradient(colors: [Color("background3"), Color("background3").opacity(0.6)]), startPoint: .top, endPoint: .bottom)) // 渐变背景色
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20) // 自定义阴影
            .padding(.horizontal, 30)
            .overlay(
                Image("Avatar")
                .resizable() // 可变尺寸的
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .offset(y: -150)
            )
        }
        .padding(.bottom, 30)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)  // 图像比例
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.7333333333, blue: 0.831372549, alpha: 1))) //  自定义图标背景色
            
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                // leading(左)，trailing(右)，top(顶部),bottom（底部）
                .frame(width: 120, alignment: .leading) 
        }
    }
}
