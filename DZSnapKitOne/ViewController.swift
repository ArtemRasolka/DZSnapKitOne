//
//  ViewController.swift
//  DZSnapKitOne
//
//  Created by Admin on 2.09.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let viewTop = ViewTop()
    let viewCenter = ViewCenter()
    let viewBottom = ViewBottom()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewTop)
        view.addSubview(viewCenter)
        view.addSubview(viewBottom)
        
    }


}

