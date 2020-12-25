//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise2: View {
    @State var dinnar = ""
    @State  var dollar = ""
    @State  var pound = ""
    @State  var eur = ""
    var body: some View {
        
        ZStack {
            VStack{
                Spacer()
                Image("currency")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .offset(y: 60.0)
            }
            ZStack {
                VStack {
                    Text("محول العملات العجيب!")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("ادخل القيمة",text: $dinnar)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)

                    VStack(spacing: 30){
                        HStack(spacing: 40){
                            Image("us")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            let dollar = (Double (dinnar) ?? 0) * 3.28
                            Text(" \(dollar )")
                        }
                        HStack(spacing: 40){
                            Image("uk")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            let pound = (Double (dinnar) ?? 0) * 2.46
                            Text("\(pound)")
                        }
                        HStack(spacing: 40){
                            Image("eu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            let eur = (Double (dinnar) ?? 0) * 2.70
                            Text("\(eur)")
                        }
                    }.padding(.top, 50)
                    Spacer()
                }
            }.padding()
        }
    }
}

struct Exercise2_Previews: PreviewProvider {
    static var previews: some View {
        Exercise2()
    }
}
