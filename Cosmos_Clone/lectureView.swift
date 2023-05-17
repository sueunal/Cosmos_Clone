//
//  lectureView.swift
//  Cosmos_Clone
//
//  Created by sueun kim on 2023/05/15.
//

import SwiftUI
protocol Lecture{
    var lecture_name : String { get }
    var en_lecture_name : String { get }
    var professor : String { get }
}
struct lectureView: View {
    @State private var lastLecture = Date()
    struct lecture : Lecture {
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
    
    let my_lecture :[Lecture] = [lecture(lecture_name: "보안감사[00]", en_lecture_name: "Security Auditing", professor:"김현곤"),lecture(lecture_name: "침입탐지와차단[00]", en_lecture_name: "Intrusion Detection and Protection", professor:"김민수"),lecture(lecture_name: "캡스톤디자인II[03]", en_lecture_name: "Capstone Designl", professor:"서재현"),lecture(lecture_name: "인공지능과보안[00]", en_lecture_name: "Artificial Intelligence and Security", professor:"장봉석"),lecture(lecture_name: "취업과창업전략[03]", en_lecture_name: "Employment and Start-Up Strategy", professor:"강사"),]
    private var i : Int? = nil
    

    
    var body: some View {
            NavigationStack {
//                ZStack(alignment: .leading){
//                    Color("DefaultColor")
//                        .edgesIgnoringSafeArea(.top)
//                        .frame(height: 120)
//                    HStack{
//                        Image("newyork")
//                            .resizable()
//                            .frame(width: 80,height: 80)
//                            .cornerRadius(40)
//                            .aspectRatio(contentMode: .fit)
//                            .padding()
//
//                        Text(std1.name)
//                            .padding(.bottom,30)
//                            .font(.title2)
//                    }
//                }
                List{
                    Section {
                        ForEach(my_lecture.indices,id:\.self){index in
                        NavigationLink{
                        }label: {
                            VStack(alignment: .leading){ // ForEach 처리 예정
                                    Text(my_lecture[index].lecture_name)
                                        .font(.title3)
                                        .bold()
                                    Text(my_lecture[index].en_lecture_name)
                                        .foregroundColor(.gray)
                                        .font(.caption2)
                                        .bold()
                                }
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
                            .padding(1)
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
