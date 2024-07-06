//
//  TextFieldExample.swift
//  CursoiOS
//
//  Created by Reynaldo Guarachi on 1/7/24.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email=""
    var body: some View {
        VStack {
            TextField("Escribe tu email",text:$email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email){
                    oldValue, newValue in
                    print(" El antiguo valor era \(oldValue) y el nuevo valor es \(newValue)")
            }
            SecureField("Escribe tu contraseña",text:$email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email){
                    oldValue, newValue in
                    print(" El antiguo valor era \(oldValue) y el nuevo valor es \(newValue)")
            }
        }
    }
}

#Preview {
    TextFieldExample()
}
