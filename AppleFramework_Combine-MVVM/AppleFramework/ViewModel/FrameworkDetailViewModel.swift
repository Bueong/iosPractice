//
//  FrameworkDetailViewModel.swift
//  AppleFramework
//
//  Created by 박철진 on 2023/03/11.
//

import Foundation
import Combine

final class FrameworkDetailViewModel {
    
    init(framework: AppleFramework){
        self.framework = CurrentValueSubject(framework)
    }
    
    let framework: CurrentValueSubject<AppleFramework, Never>
    
    
    let buttonTapped = PassthroughSubject<AppleFramework, Never>()
    func learnMoreTapped() {
        buttonTapped.send(framework.value)
    }
    
}
