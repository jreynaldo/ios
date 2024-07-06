//
//  LabelExample.swift
//  CursoiOS
//
//  Created by Reynaldo Guarachi on 1/7/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
  
        Label("susb", systemImage: "figure.badminton")
        Label(
            title: { /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/ },
            icon: { Image("swift" ).resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100) }
        )
    }
}

#Preview {
    LabelExample()
}
