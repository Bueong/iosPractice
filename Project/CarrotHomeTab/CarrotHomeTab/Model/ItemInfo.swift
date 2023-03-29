//
//  ItemInfo.swift
//  CarrotHomeTab
//
//  Created by 박철진 on 2023/03/29.
//

import Foundation

struct ItemInfo: Codable, Hashable {
    
    let postID: String
    let title: String
    let location: String
    let updated: TimeInterval
    let price: Int
    let numOfChats: Int
    let numOfLikes: Int
    let thumbnailURL: String
}
