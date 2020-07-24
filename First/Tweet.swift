//
//  Tweet.swift
//  First
//
//  Created by Kenny Ho on 7/23/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import Foundation
import UIKit

struct Tweet {
    let text: String
    let author: String
    let date: Date
    
    init(text: String, author: String, date: Date = Date()) {
        self.text = text
        self.author = author
        self.date = date
    }
}

struct URLHandler {
    typealias URLOpening = (URL, [UIApplication.OpenExternalURLOptionsKey: Any], ((Bool) -> Void)?) -> Void
    
    let urlOpener: URLOpening  = UIApplication.shared.open

    func open(url: URL) {
        if url.absoluteString.hasPrefix("internal://") {
            // run some app-specific code
        } else {
            urlOpener(url, [:], nil)
        }
    }
}

protocol ApplicationProtocol {
    func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey: Any], completionHandler completion: ((Bool) -> Void)?)
}

extension UIApplication: ApplicationProtocol {}


