//
//  lectureView.swift
//  Cosmos_Clone
//
//  Created by sueun kim on 2023/05/15.
//

import SwiftUI

struct lectureView: View {
    @State private var lastLecture = Date()
    struct lecture{
        let lecture_name : String
        let en_lecture_name : String
        let professor : String
    }
    struct Student {
        let name : String
        let std_id : String
        let department : String
    }
    let std1 = Student(name: "김수은", std_id: "193806", department: "Information Security")
    let std1_lecture = lecture(lecture_name: "보안감사[00]", en_lecture_name: "Security Auditing", professor:"김현곤")
    
    var body: some View {
            NavigationStack {
                ZStack(alignment: .leading){
                    Color("DefaultColor")
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 120)
                    HStack{
                        Image("newyork")
                            .resizable()
                            .frame(width: 80,height: 80)
                            .cornerRadius(40)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                        
                        Text(std1.name)
                            .padding(.bottom,30)
                            .font(.title2)
                    }
                }
                List{
                    Section {
                        NavigationLink{
                        }label: {
                            VStack(alignment: .leading){ // ForEach 처리 예정
                                Text(std1_lecture.lecture_name)
                                    .font(.title3)
                                    .bold()
                                Text(std1_lecture.en_lecture_name)
                                    .foregroundColor(.gray)
                                    .font(.caption2)
                                    .bold()
                            }
                        }
                    } header: {
                        Text("현재진행강좌")
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                            .bold()
                    }
                    Section{
                        DatePicker("과거 강좌를 조회합니다.", selection: $lastLecture,displayedComponents: .hourAndMinute)
                            .font(.title3)
                            .bold()
                    }
                header: {
                    Text("과거 강좌")
                        .foregroundColor(.black)
                        .bold()
                }
                    
                }.listStyle(.grouped)
        }
    }
}
struct lectureView_Previews: PreviewProvider {
    static var previews: some View {
        lectureView()
    }
}
