//
//  Category1-8View.swift
//  100-knocks-swiftui-sample
//
//  Created by mkoba on 2025/09/15.
//

import SwiftUI

struct Category1_8View: View {
    let items = ["アイテム1", "アイテム2", "アイテム3", "アイテム4"]

    var body: some View {
        VStack {
            // 8.リスト表示
            // id: \.selfは文字列が一意である場合に使用できる
            List(items, id: \.self) { item in
                Text(item)
                    .font(.body)
            }
        }
    }
}

#Preview {
    Category1_8View()
}
