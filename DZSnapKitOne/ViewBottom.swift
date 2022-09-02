//
//  ViewBottom.swift
//  DZSnapKitOne
//
//  Created by Admin on 2.09.22.
//

import UIKit
import SnapKit

class ViewBottom: UIView {

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
            make.left.equalToSuperview().inset(50)
            make.top.equalTo(870)
        }
    }
    
    func setupButtonCancel() {
        buttonCancel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(190)
            make.top.equalTo(870)
        }
    }
    
    func setupButtonClear() {
        buttonClear.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(340)
            make.top.equalTo(870)
        }
    }
    
    @objc func actionButtonSave(_ sender: UIButton) {
       
    }
    
    @objc func actionButtonCancel(_ sender: UIButton) {
        
    }
    
    @objc func actionButtonClear(_ sender: UIButton) {
        
    }
    
}
