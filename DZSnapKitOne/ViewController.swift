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
    
    var text: String?
    var textField: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewTop)
        view.addSubview(viewCenter)
        view.addSubview(viewBottom)
        
        NotificationCenter.default.addObserver(forName: .customNotification, object: nil, queue: .main) {  notification in
            
            self.text = self.viewCenter.labelAtViewCenter.text ?? ""
            self.text = notification.name.rawValue
//            self.textField = self.viewTop.firstTextField.text ?? ""
//
//           return self.text = self.textField
        }
    }
}
