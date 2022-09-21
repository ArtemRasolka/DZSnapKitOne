//
//  Sidebar.swift
//  DZSnapKitOne
//
//  Created by Admin on 21.09.22.
//

import UIKit

class Sidebar: UIView {
    
    let buttonOk: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Ok", for: .normal)
        button.addTarget(self, action: #selector(actionButtonOk(_sender:)), for: .touchUpInside)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 20
        button.clipsToBounds = true
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height)
        self.backgroundColor = .white
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        
        self.addSubview(buttonOk)
        buttonOk.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100).isActive = true
        buttonOk.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70).isActive = true
        buttonOk.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonOk.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func actionButtonOk(_sender: UIButton) {
        buttonOk.backgroundColor = .clear
        buttonOk.setTitleColor(UIColor.clear, for: .normal)
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            UIView.animate(withDuration: 0.5) {
                self.frame = CGRect(x: -400, y: 350, width: 150, height: 150)
            }
        }
    }
}
