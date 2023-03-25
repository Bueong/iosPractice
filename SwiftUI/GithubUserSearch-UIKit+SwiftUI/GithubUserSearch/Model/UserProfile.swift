//
//  UserProfile.swift
//  GithubUserSearch
//
//  Created by 박철진 on 2023/03/23.
//

import Foundation

struct UserProfile: Hashable, Identifiable, Decodable {
    var id: Int64
    var login: String
    var name: String
    var avatarUrl: URL
    var htmlUrl: String
    var followers: Int
    var following: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case login
        case avatarUrl = "avatar_url"
        case htmlUrl = "html_url"
        case followers
        case following
    }
}

extension UserProfile {
    static let mock = UserProfile(id: 5119292, login: "owlcj", name: "Daniel Park", avatarUrl: URL(string: "https://avatars.githubusercontent.com/u/5119286?v=4")!, htmlUrl: "https://github.com/owlcj", followers: 100, following: 50)
}
