//
//  ViewTop.swift
//  DZSnapKitOne
//
//  Created by Admin on 2.09.22.
//

import UIKit
import SnapKit

class ViewTop: UIView {

    let image: UIImageView = {
        let image = UIImageView(image: UIImage(named: "flowers"))
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 55
        image.layer.masksToBounds = true
        return image
    }()

    let labelFirst: UILabel = {
        let label = UILabel()
        label.text = "First"
        return label
    }()
    
    let labelMiddle: UILabel = {
        let label = UILabel()
        label.text = "Middle"
        return label
    }()
    
    let labelLast: UILabel = {
        let label = UILabel()
        label.text = "Last"
        return label
    }()
    
    let firstTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter First Name"
        field.borderStyle = .roundedRect
        return field
    }()
    
    let middleTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter Middle Name"
        field.borderStyle = .roundedRect
        return field
    }()
    
    let lastTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter Last Name"
        field.borderStyle = .roundedRect
        return field
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 10, y: 0, width: 410, height: 170)
        
        addSubview(image)
        addSubview(labelFirst)
        addSubview(labelMiddle)
        addSubview(labelLast)
        addSubview(firstTextField)
        addSubview(middleTextField)
        addSubview(lastTextField)
        
        setupImage()
        setupLabelFirst()
        setupLabelMiddle()
        setupLabelLast()
        setupFirstTextField()
        setupMiddleTextField()
        setupLastTextField()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupImage() {
        image.snp.makeConstraints { make in
            make.height.equalTo(110)
            make.width.equalTo(110)
            make.left.equalToSuperview().inset(10)
            make.top.equalToSuperview().inset(50)
            
        }
    }
    
    func setupLabelFirst() {
        labelFirst.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(60)
            make.left.equalTo(image.snp.right).inset(-10)
            make.top.equalToSuperview().inset(55)
            
        }
    }
    
    func setupLabelMiddle() {
        labelMiddle.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(60)
            make.left.equalTo(image.snp.right).inset(-10)
            make.top.equalToSuperview().inset(95)
        }
    }
    
    func setupLabelLast() {
        labelLast.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(60)
            make.left.equalTo(image.snp.right).inset(-10)
            make.top.equalToSuperview().inset(135)
        }
    }
    
    func setupFirstTextField() {
        firstTextField.snp.makeConstraints { make in
            make.width.equalTo(210)
            make.left.equalTo(labelFirst.snp.right).inset(-5)
            make.top.equalToSuperview().inset(50)
        }
    }
    
    func setupMiddleTextField() {
        middleTextField.snp.makeConstraints { make in
            make.width.equalTo(210)
            make.left.equalTo(labelFirst.snp.right).inset(-5)
            make.top.equalToSuperview().inset(90)
        }
    }
    
    func setupLastTextField() {
        lastTextField.snp.makeConstraints { make in
            make.width.equalTo(210)
            make.left.equalTo(labelFirst.snp.right).inset(-5)
            make.top.equalToSuperview().inset(130)
        }
    }
}

