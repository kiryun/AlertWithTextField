//
//  ContentView.swift
//  CustomAlert
//
//  Created by 김기현 on 2020/01/20.
//  Copyright © 2020 neowiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var shown = false
    @State var text = ""
    var body: some View {
        ZStack{
            //main page design ...
            Button(action: {
                self.text = ""
                self.shown.toggle()
            }){
                Text("button")
                
            }
                
            if self.shown{
                alertView(text: self.$text, shown: self.$shown)
            }
            else{
                alertView(text: self.$text, shown: self.$shown).hidden()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct alertView: View{
    @Binding var text: String
    @Binding var shown: Bool
    var body: some View{
        ZStack{
            VStack{
                Text("Enter Input").font(.headline).padding()
                TextField("Type text here", text: self.$text).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                Divider()
                HStack{
                    Spacer()
                    Button(action: {
//                        self.shown.toggle()
                        print(self.text)
                        print("Done")
                        self.shown.toggle()
                    }) {

                        Text("Done")
                    }
                    Spacer()

                    Divider()

                    Spacer()
                    Button(action: {
                        self.shown.toggle()
                    }) {
                        Text("Cancel")
                    }
                    Spacer()
                }
            }
        }
        .background(Color(white: 0.9))
        .frame(width: 300, height: 200)
        .cornerRadius(20)
    }
}
