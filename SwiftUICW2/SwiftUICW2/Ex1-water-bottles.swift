//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    @State var name = ""
    @State var name2 = 0
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                

        
VStack{
    
         Text(name)
        .padding()
         TextField("اكتب اسمك هنا",text:$name)
            .padding()
                }

    Stepper("كم بطلا من الماء تتعهد ان تشرب ؟",value: $name2)
            Spacer()
            .padding()
            }
    Spacer()
VStack(alignment: .center) {
    Text("اتعهد انا \(name)")
        .fontWeight(.black)
        .padding()
    Text(" ان اشرب\(name2)")
        .fontWeight(.black)
        .padding()
    Text("اكواب من الماء يوميا")
                    .fontWeight(.black)
                    .padding()
    Text("والله على ما اقول شهيد")
        .fontWeight(.black)
        .padding()            }
            }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
    Exercise1()
            .previewDevice("iPhone 12")
    }
}

