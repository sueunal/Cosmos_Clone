//
//  ContentView.swift
//  Cosmos_Clone
//
//  Created by sueun kim on 2023/05/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Section {
                Text("보안 감사[00")
                Text("보안 감사[00")
                Text("보안 감사[00")
                Text("보안 감사[00")
                Text("보안 감사[00")
            } header: {
                Text("현재진행강좌")
                    .bold()
            }
            Section{
                Text("과거강좌를 조회합니다.")
                    .bold()
            }header: {
                Text("과거강좌")
            }
        }.listStyle(.grouped)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
