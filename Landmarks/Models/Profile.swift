//
//  Profile.swift
//  Landmarks
//
//  Created by Shivansh Gupta on 15/08/23.
//

import Foundation

struct Profile {
    var usename: String
    var prefersNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(usename: "gshivg")
    
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
