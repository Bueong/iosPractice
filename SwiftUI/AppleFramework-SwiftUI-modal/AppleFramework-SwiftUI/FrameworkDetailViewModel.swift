//
//  FrameworkListDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by 박철진 on 2023/03/22.
//

import Foundation

final class FrameworkDetailViewModel: ObservableObject {
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
