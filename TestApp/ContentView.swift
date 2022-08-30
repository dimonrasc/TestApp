//
//  ContentView.swift
//  TestApp
//
//  Created by huf on 28.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var t: Int = 0
    
    var body: some View {
        
        VStack{
            HStack{
                Text("You pressed button ").font(.title)
                Text("\(t)").font(.title)
            }
            Button(action: {self.t = self.t + 1}){
                Text("Button").font(.title)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .accentColor(Color.white)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
