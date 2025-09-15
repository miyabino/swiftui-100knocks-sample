//
//  Category1View.swift
//  100-knocks-swiftui-sample
//
//  Created by mkoba on 2025/09/15.
//

import SwiftUI

struct Category1View: View {
    // @Stateで状態管理 ボタン押下で変数の中身が変更され、Textに自動反映される
    @State private var message = "ボタンを押してください"
    @State private var inputText = ""
    @State private var isVisible = true
    
    var body: some View {
        VStack {
            // 1.テキスト表示
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
            // 2.画像表示
            Image("sample1")
                .resizable() // サイズ調整可能
                .scaledToFit() // アスペクト比維持
                .frame(width: 300) // 表示サイズ指定
            // 3.ボタン作成
            VStack {
                Text(message)
                Button(action: {
                    message = "ボタンが押されました！"
                }) {
                    Text("押す")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            // 4.VStackでレイアウト
            VStack {
                Text("項目1")
                    .font(.headline)
                Text("項目2")
                    .font(.subheadline)
                Text("項目3")
                    .font(.caption)
            }
            // 5.HStackでレイアウト
            HStack {
                Text("画像")
                    .font(.title)
                Image("sample1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text("横並び")
                    .font(.title)
            }
            // 7.状態管理
            VStack {
                TextField("文字を入力", text: $inputText)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("入力: \(inputText)") // inputTextをバインド
            }
            .padding()
            // 9.カスタムモディファイア
            Text("カスタムテキスト")
                .font(.system(size: 15, weight: .bold, design: .rounded))
                .foregroundColor(.purple)
                .padding()
                .background(Color.yellow)
                .cornerRadius(8)
                .shadow(radius: 5)
            // 10.基本アニメーション
            // (ボタンタップでビューの表示/非表示をアニメーションで切り替え)
            VStack {
                if isVisible {
                    Text("表示中")
                        .transition(.opacity) // フェードイン/アウト
                }
                Button(action: {
                    withAnimation {
                        isVisible.toggle()
                    }
                }) {
                    Text("切り替え")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            // 6.Spacerでビューを画面の端によせる
            VStack {
                Text("上部に寄せる")
                    .font(.title)
                Spacer() // 残りのスペースを埋めて下に押し出す
                Text("下部に寄せる")
                    .font(.title)
            }
            
        }
    }
}

#Preview {
    Category1View()
}
