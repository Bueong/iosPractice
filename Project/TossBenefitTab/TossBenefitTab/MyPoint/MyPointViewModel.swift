//
//  MyPointViewModel.swift
//  TossBenefitTab
//
//  Created by 박철진 on 2023/03/28.
//

import Foundation

final class MyPointViewModel {
    @Published var point: MyPoint
    
    init(point: MyPoint) {
        self.point = point
    }
}
