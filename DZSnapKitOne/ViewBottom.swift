//
//  ViewBottom.swift
//  DZSnapKitOne
//
//  Created by Admin on 2.09.22.
//

import UIKit
import SnapKit

class ViewBottom: UIView {
   
      var viewCenter = ViewCenter()
      var viewTop = ViewTop()
    
    let buttonSave: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save", for: .normal)
        button.addTarget(self, action: #selector(actionButtonSave(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonCancel: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Cancel", for: .normal)
        button.addTarget(self, action: #selector(actionButtonCancel(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonClear: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Cancel", for: .normal)
        button.addTarget(self, action: #selector(actionButtonClear(_:)), for: .touchUpInside)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 10, y: 850, width: 410, height: 70)
        
        addSubview(buttonSave)
        addSubview(buttonCancel)
        addSubview(buttonClear)
        
        setupButtonSave()
        setupButtonCancel()
        setupButtonClear()
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButtonSave() {
        buttonSave.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(30)
            make.top.equalTo(20)
        }
    }
    
    func setupButtonCancel() {
        buttonCancel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(180)
            make.top.equalTo(20)
        }
    }
    
    func setupButtonClear() {
        buttonClear.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(330)
            make.top.equalTo(20)
        }
    }
    
    @objc func actionButtonSave(_ sender: UIButton) {
        print("Save button tapped!")
        
    }

    @objc func actionButtonCancel(_ sender: UIButton) {
        print("Cancel button tapped!")
        
    }

    @objc func actionButtonClear(_ sender: UIButton) {
        print("Clear button tapped!")
        
    }
}
