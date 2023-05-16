//
//  lectureView.swift
//  Cosmos_Clone
//
//  Created by sueun kim on 2023/05/15.
//

import SwiftUI

struct lectureView: View {
    @State private var lastLecture = Date()
    var body: some View {
        List{
            Section {
                Text("보안 감사[00]")
                Text("보안 감사[00]")
                Text("보안 감사[00]")
                Text("보안 감사[00]")
                Text("보안 감사[00]")
            } header: {
                
                Text("현재진행강좌")
                    .foregroundColor(.black)
                    .bold()
                
            }
            Section{
                DatePicker("과거 강좌를 조회합니다.", selection: $lastLecture,displayedComponents: .hourAndMinute)
            }
            header: {
                Text("과거 강좌")
            }
            
        }.listStyle(.grouped)
    }
}

struct lectureView_Previews: PreviewProvider {
    static var previews: some View {
        lectureView()
    }
}
