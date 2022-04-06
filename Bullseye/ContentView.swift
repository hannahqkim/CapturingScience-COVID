
//
//  AboutView.swift
//  COVID-19
//
//  Created by Hannah Kim on 10/3/20.
//  Template Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//----------------------------------------------------------------
    @State var alertIsVisible = false
    @State var sliderValue = 50.0
    @State var genesFound = 0
//----------------------------------------------------------------
    struct Shadow: ViewModifier {
      func body(content: Content) -> some View {
        return content
          .shadow(color: Color.black, radius: 5, x: 2, y: 2)
      }
    }
//----------------------------------------------------------------
    var body: some View {
            VStack {
                Spacer()
    //----------------------------------------------------------------
              // Target row
              VStack {
                Text("The line below represents a portion of ")
                Text("the COVID-19 viral gene sequence")
                Text("Find the 3 genes using the slide bar")
                Text("Click and check if the gene is the target gene")
              }
              Spacer()
                Spacer()
    //----------------------------------------------------------------
              // Slider row
              HStack {
                Text("N term.")
                Slider(value: $sliderValue, in: 1...100, step:10)
                Text("C term")
              }
              Spacer()
    //----------------------------------------------------------------
              // Button row
              Button(action: {
                print("Button pressed!")
                print(sliderValue)
                self.alertIsVisible = true
                
              }) {
                Text("Check gene")
              }
              .alert(isPresented: $alertIsVisible) {() -> Alert in
                return Alert(title: Text(alertTitle()),
                             message: Text(alertMessage()),
                             dismissButton: .default(Text("Find more genes")) {
                    self.genesFound = self.genesFound + 1
                })
              }
              .background(Image("Button")).modifier(Shadow())
              Spacer()
    //----------------------------------------------------------------
              // Score row
              HStack {
                NavigationLink(destination: AboutView()){
                  Text("RTPCR Info")
                }.background(Image("Button").modifier(Shadow()))
                Spacer()
                Text("Total trials:")
                Text("\(genesFound)")
                Spacer()
                NavigationLink(destination: AboutView2()) {
                  Text("More Info")
                }.background(Image("Button").modifier(Shadow()))
              }
            }
            .background(Image("gamepage")
                            .resizable()
                            .aspectRatio(contentMode: .fill))
            .padding(.bottom, 20)
            .navigationBarTitle("COVID-19 Detection")
          }
//Var body ends----------------------------------------------------------------
    func sliderValueRounded() -> Int {
        Int(sliderValue.rounded())
      }
    
    func alertTitle() -> String {
        var title: String
        if sliderValueRounded() == 50 {
            title = "You found the RdRP gene"
        }
        else if sliderValueRounded() == 81 {
            title = "You found the E gene"
        }
        else if sliderValueRounded() == 91 {
            title = "You found the N gene"
        }
        else {
            title = "Try again"
        }
        return title
    }
    
    func alertMessage() -> String {
        var message: String
        if sliderValueRounded() == 50 {
            message = "This is 1 of 3 genes used to identify COVID-19"
        }
        else if sliderValueRounded() == 81 {
            message = "This is 1 of 3 genes used to identify COVID-19"
        }
        else if sliderValueRounded() == 91 {
            message = "This is 1 of 3 genes used to identify COVID-19"
        }
        else {
            message = "This is not a gene used to detect COVID-19"
        }
        return message
    }
      
//----------------------------------------------------------------
    struct ContentView_Previews: PreviewProvider {
      static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
      }
    }
//----------------------------------------------------------------
}

