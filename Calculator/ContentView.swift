//
//  ContentView.swift
//  Calculator
//
//  Created by Mattia Fasoli on 08/04/21.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="]
    ]
    
    var body: some View {
        
        ZStack (alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack (spacing: 12) {
                HStack {
                    Spacer()
                    Text("42").foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding()
                
                ForEach(buttons, id: \.self) {row in
                    HStack (spacing: 12) {
                        ForEach(row, id: \.self) {button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: self.buttonWith(), height: self.buttonWith())
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(self.buttonWith())
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    
    func buttonWith() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
