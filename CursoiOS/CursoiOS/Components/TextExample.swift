//
//  TextExample.swift
//  CursoiOS
//
//  Created by Reynaldo Guarachi on 1/7/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.headline)
        Text("Custom").font(.system(size: 40, weight: .light,  design: .monospaced)).bold()
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .background(.red)
        Text("aris aris aris aris")
            .frame(width: 100)
            .lineLimit(3)
    }
}

#Preview {
    TextExample()
}
