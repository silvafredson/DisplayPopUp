//
//  ContentView.swift
//  DisplayPopUp
//
//  Created by Fredson Silva on 24/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color.mint
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader { buttonSize in
                
                VStack {
                    
                    Button {
                        showSheet.toggle()
                    } label: {
                        
                        VStack {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .scaledToFill()
                            .frame(width: 60, height: 60)
                            Text("Add you list")
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(width: 320, height: 50)
                        }
                    }
                    .sheet(isPresented: $showSheet) {
                        SecondScreen()
                    }// .sheet can only bee used one time peur View
                }
                .frame(maxWidth: buttonSize.size.width, maxHeight: buttonSize.size.height * 0.95, alignment: .bottom)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
