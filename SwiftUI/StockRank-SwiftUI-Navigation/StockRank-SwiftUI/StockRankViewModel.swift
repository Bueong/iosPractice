//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by 박철진 on 2023/03/21.
//

import Foundation


final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
