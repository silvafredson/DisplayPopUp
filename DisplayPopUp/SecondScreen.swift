//
//  SecondScreen.swift
//  DisplayPopUp
//
//  Created by Fredson Silva on 24/10/22.
//

import SwiftUI

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            ZStack(alignment: .topLeading) {
                
                Color.yellow
                    .edgesIgnoringSafeArea(.all)

                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                }

            }
            
            Text("Second Screen")
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
