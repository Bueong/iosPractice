//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by 박철진 on 2023/03/22.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false
    @Published var selectedItem: AppleFramework?
}
