//
//  User.swift
//  First
//
//  Created by Kenny Ho on 7/21/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import Foundation

struct User {
    static let upgradedNotification = Notification.Name("User-Upgraded")
    
    func upgrade(using center: NotificationCenter = NotificationCenter.default) {
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: 1)
            center.post(name: User.upgradedNotification, object: nil, userInfo: ["level" : "gold"])
        }
    }
    
    
}
