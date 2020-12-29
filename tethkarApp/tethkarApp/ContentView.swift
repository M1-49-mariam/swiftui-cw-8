//
//  ContentView.swift
//  tethkarApp
//
//  Created by Mariam2 on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State var counter = [0, 0, 0]
    
    var body: some View {
        VStack{
            
            TethkarButton(counter: $counter[0], label: "استغفرالله العظيم")
            
            TethkarButton(counter: $counter[1], label: " سبحان الله وبحمده")

            TethkarButton(counter: $counter[2], label: "الحمدلله")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           
    }
}

struct TethkarButton: View {
    
    
    @Binding var counter: Int
    let label: String
    
    
    
    var body: some View {
        HStack {
            Spacer()
            Text(label)
                .font(.largeTitle)
            Spacer()
            Button(action: {
                counter += 1
            }, label: {
                Text("\(counter)")
                    .foregroundColor(Color.white)
                    
                    .frame(width: 50.0, height: 50.0)
                    .background(Color.blue)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
                
            })
            
            
        }
    }
    
}
