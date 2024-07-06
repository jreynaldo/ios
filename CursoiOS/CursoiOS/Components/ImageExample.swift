//
//  ImageExample.swift
//  CursoiOS
//
//  Created by Reynaldo Guarachi on 1/7/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("swift")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
        Image(systemName: "figure.walk")
            .resizable()
    }
}

#Preview {
    ImageExample()
}
