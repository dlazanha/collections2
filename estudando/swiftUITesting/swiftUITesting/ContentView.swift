//
//  ContentView.swift
//  swiftUITesting
//
//  Created by Diego Araujo Lazanha on 27/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showalert = false
    @State var chanceText = false
    @State var stepperValue = 10
    
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("botão 01")
                        .foregroundColor(Color.yellow)
                }
                Spacer()
                Button(action: {}) {
                    Text("botão 02")
                        .foregroundColor(Color.black)
                }
                Spacer()
                Button(action: {}) {
                    Text("botão 03")
                        .foregroundColor(Color.pink)
                }
                Spacer()
                Stepper(value: $stepperValue, in: 1...10) {
                    Text("Stepper \(self.stepperValue)")
                }
                
            }.padding(.vertical, 20)
            
            
            chanceText ? // da pra usar if else ...no caso ? seria o if e : seria o else
                Text("Mostra")
                .font(.headline)
                .fontWeight(.black)
                .foregroundColor(Color.black)
                .padding()
                :
                Text("nao mostra")
                .font(.headline)
                .fontWeight(.black)
                .foregroundColor(Color.green)
                .padding()
            
            
            Text("Hello, world!")
                .font(.headline)
                .fontWeight(.black)
                .foregroundColor(Color.blue)
                .padding()
            
            Button(action: {
                print("botão apertado")
                self.showalert = true
                self.chanceText = true
            }) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("CLIQUE AKI")
                    .foregroundColor(Color.red)/*@END_MENU_TOKEN@*/
            }
            
        }
        .alert(isPresented: $showalert) { () -> Alert in
            return Alert(title: Text("Ola"), message: Text("mundo"), dismissButton: .default(Text("OK")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
