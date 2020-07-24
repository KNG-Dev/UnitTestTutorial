//
//  ShareViewController.swift
//  First
//
//  Created by Kenny Ho on 7/23/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        //Use weak self to fix the retained cycle
        view = ShareView { [weak self] in
            self?.shareContent(test: $0)
        }
    }
    
    func shareContent(test: String) {
        print("Sharing text...")
    }
    


}
