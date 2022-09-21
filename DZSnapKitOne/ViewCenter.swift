//
//  ViewCenter.swift
//  DZSnapKitOne
//
//  Created by Admin on 2.09.22.
//

import UIKit
import SnapKit

class ViewCenter: UIView {
    
    var viewTop = ViewTop()
    
    var labelAtViewCenter: UILabel = {
        let label = UILabel()
        label.text = "Notes:"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 10, y: 175, width: 410, height: 670)
        
        self.backgroundColor = .gray
        self.layer.cornerRadius = 10
        addSubview(labelAtViewCenter)
        
        setupLabel()

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
}

