//
//  MyPoint.swift
//  TossBenefitTab
//
//  Created by 박철진 on 2023/03/23.
//

import Foundation

struct MyPoint: Hashable {
    var point: Int
}

extension MyPoint {
    static let `default` = MyPoint(point: 0)
}
