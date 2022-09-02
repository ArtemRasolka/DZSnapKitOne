//
//  ViewCenter.swift
//  DZSnapKitOne
//
//  Created by Admin on 2.09.22.
//

import UIKit
import SnapKit

class ViewCenter: UIView {

    let viewCenter: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 10
        return view
    }()

    let labelAtViewCenter: UILabel = {
        let label = UILabel()
        label.text = "Notes:"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(labelAtViewCenter)
        addSubview(viewCenter)
        viewCenter.addSubview(labelAtViewCenter)
        
        setupLabel()
        setupViewCenter()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabel() {
        labelAtViewCenter.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(20)
            make.height.equalTo(20)
            make.top.equalTo(10)
        }
    }
    
    func setupViewCenter() {
        viewCenter.snp.makeConstraints { make in
            make.height.equalTo(670)
            make.width.equalTo(408)
            make.left.equalToSuperview().inset(10)
            make.right.equalToSuperview().inset(10)
            make.top.equalToSuperview().inset(180)
        }
    }
    
}

