//
//  CosmosTabView.swift
//  Cosmos_Clone
//
//  Created by sueun kim on 2023/05/15.
//

import SwiftUI

struct CosmosTabView: View {
    let gradient = LinearGradient(colors: [.blue.opacity(0.3), .green.opacity(0.5)],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)
    
    var body: some View {
        TabView{
            VStack {
                lectureView()
                    .frame(maxHeight: .infinity)
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 0)
                    .background(.white)
            }
            .tabItem {
                Label("홈", systemImage: "house")
            }
            Text("")
                .tabItem {
                    Label("대화", systemImage: "message")
                }
            Text("")
                .tabItem {
                    Label("알림", systemImage: "bell")
                }
            Text("")
                .tabItem {
                    Label("일정", systemImage: "calendar")
                }
            Text("")
                .tabItem {
                    Label("더보기", systemImage: "line.3.horizontal")
                }
        }
    }
}

struct CosmosTabView_Previews: PreviewProvider {
    static var previews: some View {
        CosmosTabView()
    }
}
