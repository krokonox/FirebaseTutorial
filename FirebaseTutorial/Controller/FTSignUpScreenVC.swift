//
//  FTSignUpScreenVC.swift
//  FirebaseTutorial
//
//  Created by Admin on 21/06/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class FTSignUpScreenVC: UIViewController {
    
    // MARK: - Gui Variables
    
    private lazy var titleLabel: FTTitleLabel = {
        let title = FTTitleLabel()
        title.textAlignment = .left
        title.text = "Sign Up"
        return title
    }()
    
    private lazy var nameTextField: FTTextField = {
        let textField = FTTextField()
        textField.placeholder = "Full Name"
        return textField
    }()
    
    private lazy var phoneTextField: FTTextField = {
        let textField = FTTextField()
        textField.placeholder = "Phone Number"
        return textField
    }()
    
    private lazy var emailTextField: FTTextField = {
        let textField = FTTextField()
        textField.placeholder = "E-mail Address"
        return textField
    }()
    
    private lazy var passwordTextField: FTTextField = {
        let textField = FTTextField()
        textField.isSecureTextEntry = true
        textField.placeholder = "Password"
        return textField
    }()
    
    private lazy var signupButton: BlueFTButton = {
         let button = BlueFTButton()
         button.layer.cornerRadius = 20
         button.setTitle("Sign Up", for: .normal)
         button.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
         return button
     }()
    
     // MARK: - UI Functions
    
    private func setupViews() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(nameTextField)
        self.view.addSubview(phoneTextField)
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(signupButton)
        
        self.setupConstraints()
        self.hideKeyboardWhenTappedAround()
    }
    
    private func setupConstraints() {
        self.titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(120)
            make.left.right.equalToSuperview().offset(20)
        }
        
        self.nameTextField.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.top.equalTo(titleLabel.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().inset(40)
        }
        
        self.phoneTextField.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.top.equalTo(nameTextField.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().inset(40)
        }
        
        self.emailTextField.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.top.equalTo(phoneTextField.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().inset(40)
        }
        
        self.passwordTextField.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().inset(40)
        }
        
        self.signupButton.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.top.equalTo(passwordTextField.snp.bottom).offset(25)
            make.left.equalToSuperview().offset(60)
            make.right.equalToSuperview().inset(60)
        }
    }
    
     // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.view.backgroundColor = .white
        self.setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
     }
     
     // MARK: - Objc Functions
     
     @objc private func didTapSignUpButton() {
         let loginVC = FTLoginScreenVC()
         self.navigationController?.pushViewController(loginVC, animated: true)
     }
}
