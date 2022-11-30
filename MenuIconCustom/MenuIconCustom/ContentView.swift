//
//  ContentView.swift
//  MenuIconCustom
//
//  Created by Danil Bochkarev on 30.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isRotating = false
    @State var isHidden = false
    
    var body: some View {
        VStack(spacing: 14) {
            
            Rectangle()
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(isRotating ? Angle(degrees: 48) : Angle(degrees: 0), anchor: .leading)
            
            Rectangle()
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .scaleEffect(x: isHidden ? 0 : 1,
                             y: isHidden ? 0 : 1,
                             anchor: .leading)
                .opacity(isHidden ? 0 : 1)
            
            Rectangle()
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(isRotating ? Angle(degrees: -48) : Angle(degrees: 0), anchor: .leading)
        }
        .padding()
        .onTapGesture {
            withAnimation(.interpolatingSpring(stiffness: 300, damping: 15)) {
                isRotating.toggle()
                isHidden.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
