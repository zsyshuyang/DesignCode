 //
//  UpdateDetail.swift
//  DesignCode
//
//  Created by zsy on 2020/2/17.
//  Copyright © 2020 zsy. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update = updateData[0]
    
    var body: some View {
        List {   //  也具有和ScrollView滑动功能
            VStack {
                // 设置样式确认，图像和文本框对齐
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(update.title)
        }
        .listStyle(PlainListStyle())
    }
} 

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}

 
 
