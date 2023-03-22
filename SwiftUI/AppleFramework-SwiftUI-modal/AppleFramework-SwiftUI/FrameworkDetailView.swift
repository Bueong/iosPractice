//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by 박철진 on 2023/03/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var framework: AppleFramework?
    
    var body: some View {
        VStack {
            if let framework = framework {
                Image(framework.imageName)
                Text(framework.name)
                Text(framework.description)
            } else {
                Text("Nothing Selected")
            }
            
            Button {
                print("--> Tapped")
            } label: {
                Text("Button")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: .constant(AppleFramework.list[0]))
    }
}
