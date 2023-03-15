//
//  ContentView.swift
//  SymbolRoller-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct SymbolRollerView: View {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @State var imageName: String = "moon"
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold))
            
            Button {
                print("Button Tapped")
            } label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath")
                    
                    VStack {
                        Text("Reload")
                        Text("Reload")
                    }
                }
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.yellow)
            .cornerRadius(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRollerView()
    }
}
