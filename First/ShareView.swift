//
//  ShareView.swift
//  First
//
//  Created by Kenny Ho on 7/23/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import UIKit

class ShareView: UIView {
    var shareAction: (String) -> Void
    var textField: UITextField!

    init(shareAction: @escaping (String) -> Void) {
        self.shareAction = shareAction
        super.init(frame: .zero)

        let textField = UITextField()
        addSubview(textField)

        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(shareTapped), for: .touchUpInside)
        addSubview(textField)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) is not supported.")
    }

    @objc func shareTapped() {
        guard let text = textField.text else {
           return
        }
        shareAction(text)
    }
}


