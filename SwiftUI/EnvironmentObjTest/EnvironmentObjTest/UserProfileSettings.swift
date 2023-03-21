//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by 박철진 on 2023/03/21.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
