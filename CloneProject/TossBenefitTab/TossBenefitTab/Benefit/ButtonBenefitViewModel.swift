//
//  ButtonBenefitViewModel.swift
//  TossBenefitTab
//
//  Created by 박철진 on 2023/03/28.
//

import Foundation

final class ButtonBenefitViewModel {
    @Published var benefit: Benefit
    @Published var benefitDetails: BenefitDetails?
    
    init(benefit: Benefit) {
        self.benefit = benefit
    }
    
    func fetchDetails() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.benefitDetails = .default
        }
    }
}
