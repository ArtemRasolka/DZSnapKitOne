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
    let sidebar = Sidebar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewTop)
        view.addSubview(viewCenter)
        view.addSubview(viewBottom)
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { timer in
            UIView.animate(withDuration: 4) {
                self.view.addSubview(self.sidebar)
                
            } completion: { _ in
                self.sidebar.alpha = 0.9
            }
        }
    }
}
