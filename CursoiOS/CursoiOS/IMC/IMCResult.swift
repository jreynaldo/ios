//
//  IMCResult.swift
//  CursoiOS
//
//  Created by Reynaldo Guarachi on 2/7/24.
//

import SwiftUI

struct IMCResult: View {
    let userWeight:Double
    let userHeight:Double
    var body: some View {
        VStack{
            Text("Tu Resultado").font(.title).bold().foregroundColor(.white)
            let result = calcualrImc(weight: userWeight, height: userHeight)
            InformationView(result: result)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity).padding()
        .background(.backgroundApp)
    }
}

func calcualrImc(weight:Double, height:Double)->Double{
    let result = weight/((height/100) * (height/100))
    return result
}

struct InformationView: View {
    let result: Double
    var body: some View {
        let information = getImcResutl(result: result)
        VStack {
            Spacer()
            
            Text(information.0).foregroundColor(information.2).font( .title).bold()
            
            Spacer()
            
            Text("\(result,specifier: "%.2f")").font(.system(size: 80))
                .foregroundColor(.white).bold()
            Spacer()
            
            Text(information.1)
            
                .foregroundColor(.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding(.horizontal,  8)
            Spacer()
        }.frame(minWidth: .infinity, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(.backgroundComponent)
            .cornerRadius(16)
            .padding(16)
    }
}

func getImcResutl(result:Double) -> (String, String, Color) {
    
    let title: String
    let description:String
    let color:Color
    
    switch result {
    case 0.00..<20:
        title = "Peso Bajo"
        description = "Estás por debajo del peso recomendado"
        color = .yellow
        
    case 20.00..<25:
        title = "Peso Normal"
        description = "Está en el peso recomendado sugún el IMC"
        color = .green
        
    case 25..<30:
        title = "Sobrepeso"
        description = " Estás por encima del peso recomendado "
        color = .orange
        
    case 30...100:
        title = "Obsidad"
        description = "Está por enciam del peso recomendado sugún el IMC."
        color = Color.red
        
    default:
        title = "Error"
        description = "Ocurrio un error"
        color = .gray
    }
    
    return (title, description, color)
}



#Preview {
    IMCResult(userWeight: 80, userHeight: 190)
}
