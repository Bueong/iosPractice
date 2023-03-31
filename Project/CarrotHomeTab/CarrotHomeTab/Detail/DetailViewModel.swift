
import Foundation
import Combine

final class DetailViewModel {
    
    let network: NetworkService
    let itemInfo: ItemInfo
    
    @Published var itemInfoDetails: ItemInfoDetails? = nil
    
    init(network: NetworkService, itemInfo: ItemInfo) {
        self.network = network
        self.itemInfo = itemInfo
    }
    
    func fetch() {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.5) {
            self.itemInfoDetails = ItemInfoDetails()
        }
    }
    
}
