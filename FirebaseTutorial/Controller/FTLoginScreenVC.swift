//
//  FTLoginScreenVC.swift
//  FirebaseTutorial
//
//  Created by Admin on 21/06/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class FTLoginScreenVC: UIViewController {
    
    // MARK: - Gui Variables
    
    private lazy var titleLabel: FTTitleLabel = {
        let title = FTTitleLabel()
        title.textAlignment = .left
        title.text = "Log In"
        return title
    }()
    
    private lazy var emailTextField: FTTextField = {
        let textField = FTTextField()
        textField.placeholder = "E-mail"
        return textField
    }()
    
    private lazy var passwordTextField: FTTextField = {
           let textField = FTTextField()
           textField.placeholder = "Password"
           return textField
       }()
    
    private lazy var loginButton: RedFTButton = {
        let button = RedFTButton()
        button.setTitle("Log in", for: .normal)
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var facebookButton: BlueFTButton = {
        let button = BlueFTButton()
        button.setTitle("Log in", for: .normal)
        button.addTarget(self, action: #selector(didTapFacebookButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var optionLabel: UILabel = {
        let label = UILabel()
        label.text = "OR"
        label.textAlignment = .center
        return label
    }()
    
    // MARK: - UI Functions
    
    private func setupViews() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(loginButton)
        self.view.addSubview(optionLabel)
        self.view.addSubview(facebookButton)
        
        self.setupConstraints()
    }
    
    private func setupConstraints() {
        self.titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(120)
            make.left.right.equalToSuperview().offset(20)
        }
        
        self.emailTextField.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.top.equalTo(titleLabel.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().inset(25)
        }
        
        self.passwordTextField.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.top.equalTo(emailTextField.snp.bottom).offset(24)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().inset(25)
        }
        
        self.optionLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(loginButton.snp.bottom).offset(38)
        }
        
        self.loginButton.snp.makeConstraints { (make) in
            make.height.equalTo(55)
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().inset(40)
        }
        
        self.facebookButton.snp.makeConstraints { (make) in
            make.height.equalTo(55)
            make.top.equalTo(optionLabel.snp.bottom).offset(38)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().inset(40)
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
    
    @objc private func didTapLoginButton() {
        let loginVC = FTLoginScreenVC()
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @objc private func didTapFacebookButton() {
        let signUpVC = FTSignUpScreenVC()
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
}
