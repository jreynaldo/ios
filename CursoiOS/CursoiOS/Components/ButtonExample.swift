//
//  ButtonExample.swift
//  CursoiOS
//
//  Created by Reynaldo Guarachi on 1/7/24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Hola"){
            print(" Reynaldo")
        }
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .background(.red)
        })
    }
}

struct Counter:View {
    @State var subscriberNumber = 0
    var body: some View {
        Button(action: {
            subscriberNumber += 1
        }
               , label: {
            Text("SubscribersNumber \(subscriberNumber)")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame( height: 50)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(10)
        })
    }
}

#Preview {
    Counter()
}
