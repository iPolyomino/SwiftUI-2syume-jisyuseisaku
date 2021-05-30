//
//  ContentView.swift
//  SwiftUI-2syume jisyuseisaku
//
//  Created by Hiroaki Ishiga on 2021/05/29.
//

import SwiftUI

struct ContentView: View {
 let one = ["肉","魚","麺類"]
 let two =  ["外食","自炊","出前"]
 let three = ["500円以内","1000円以内","1000円以上！"]
    
 @State var te = ""
 @State var ta = ""
 @State var tt = ""
    //配列　p45
    
    var body: some View {
        VStack{
            Button("メニューは？"){
                te = one.randomElement()!
            }
            .foregroundColor(.white)
            .background(
            Capsule()
                .foregroundColor(.blue)
                .frame(width: 160, height : 40)
            )
            Text(te)
                .font(.largeTitle)
                .padding()
            Button("どこで食べる?"){
                ta = two.randomElement()!
            }
            .foregroundColor(.white)
            .background(
            Capsule()
                .foregroundColor(.blue)
                .frame(width: 160, height : 40)
            )
            Text(ta)
                .font(.largeTitle)
                .padding()
            Button("予算は？"){
                tt = three.randomElement()!
            }
            .foregroundColor(.white)
            .background(
            Capsule()
                .foregroundColor(.blue)
                .frame(width: 160, height : 40)
            )
            Text(tt)
                .font(.largeTitle)
                .padding()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



