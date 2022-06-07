//
//  MenuOption.swift
//  SideMenuProject
//
//  Created by Micah Burnside on 6/7/22.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(systemName: "person.fill")!
        case .Inbox: return UIImage(systemName: "envelope.fill")!
        case .Notifications: return UIImage(systemName: "sidebar.left")!
        case .Settings: return UIImage(systemName: "gear")!
        }
    }


}
