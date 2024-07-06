//
//  IMCView.swift
//  CursoiOS
//
//  Created by Reynaldo Guarachi on 2/7/24.
//

import SwiftUI

struct IMCView: View {
    @State var gender:Int = 0
    @State var edad:Int = 0
    @State var peso:Int = 0
    
    @State var height:Double = 100
    var body: some View {
        VStack{
            HStack {
                ToggleButton(text: "Hombre", imageName: "heart.fill", gender: 0,selectedGender: $gender)
                ToggleButton(text: "Mujer", imageName: "heart.fill", gender: 1, selectedGender: $gender)
              
            }
            
            HeighCalculator(selectedHeight: $height)
            
            HStack {
                CounterButton(title: "Edad", number: $edad)
                CounterButton(title: "Peso", number: $peso)
            }
            IMCCalculatorButton(userWeight: Double(peso), userHeight: height)
           
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.backgroundApp)
            .navigationBarBackButtonHidden()
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("IMC Calculator").foregroundColor(.white)
                }
            }
    }
}
struct ToggleButton:View {
    let text:String
    let imageName:String
    let gender:Int
    @Binding var selectedGender:Int
    
    var body: some View {
        let color = if(gender == selectedGender){
            Color.backgroundSelect
        } else {
            Color.backgroundComponent
        }
        Button(action: {
            selectedGender = gender
        }){
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                InformationText(text:text)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(color)
        }
    }
}

struct InformationText:View {
    let text:String
    var body: some View {
        Text(text).font(.largeTitle).bold().foregroundColor(.white)
    }
}

struct HeighCalculator:View {
    @Binding var selectedHeight:Double
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in:100...220, step: 1)
                .accentColor(.purple).padding(.horizontal, 16)
        
            
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}

struct TitleText:View {
    let text:String
    var body: some View {
        Text(text).font(.title2).foregroundColor(.gray)
    }
}

struct CounterButton:View {
    let title:String
    @Binding var number:Int
    
    var body: some View {
        VStack{
            TitleText(text: title)
            InformationText(text: String(number))
          
            HStack{
                Button(action: {
                    number = number == 0 ? number:number - 1
                }) {
                    ZStack{
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "minus")
                            .resizable()
                            .foregroundColor(.white)
                            .scaledToFit()
                            .frame(width: 25,height: 25)
                    }
                }
                Button(action: {
                    number = number == 100 ? 100 : number + 1
                }) {
                    ZStack{
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25,height: 25)
                    }
                }
            }
        
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.backgroundComponent)
      
    }
}
struct IMCCalculatorButton  : View {
    let userWeight:Double
    let userHeight:Double
    var body: some View {
        NavigationStack{
            NavigationLink(destination: {IMCResult(userWeight: userWeight, userHeight: userHeight)}){
                Text("Calcular").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundColor(.purple)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 100)
                    .background(.backgroundComponent)
            }        }
    }
}
#Preview {
    IMCView()
}
