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
    
    let buttonImage: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("", for: .normal)
        button.addTarget(self, action: #selector(actionButtonImage(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewTop)
        viewTop.addSubview(buttonImage)
        view.addSubview(viewCenter)
        view.addSubview(viewBottom)
        
        setupButtonImage()
    }
    
    @objc func actionButtonImage(_ sender: UIButton) {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            UIView.animate(withDuration: 0.1) {
                self.view.addSubview(self.sidebar)
            } completion: { _ in
                self.sidebar.alpha = 0.9
            }
        }
    }
    
    func setupButtonImage(){
        buttonImage.snp.makeConstraints { make in
            make.centerX.equalTo(viewTop.image.snp.centerX)
            make.centerY.equalTo(viewTop.image.snp.centerY)
            make.height.equalTo(110)
            make.width.equalTo(110)
        }
    }
}
