//
//  FBLandingScreenVC.swift
//  FirebaseTutorial
//
//  Created by Admin on 21/06/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit
import SnapKit

class FTLandingScreenVC: UIViewController {
    
    // MARK: - Gui Variables
    
    private lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo")?.withTintColor(UIColor(named: "RedColor") ?? .red)
        image.clipsToBounds = true
        return image
    }()
    
    private lazy var titleLabel: FTTitleLabel = {
        let title = FTTitleLabel()
        title.text = "Welcome to your app"
        return title
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let title = UILabel()
        title.text = "Start your IOS app with this Firebase SDK Kit"
        title.textAlignment = .center
        title.numberOfLines = 0
        title.font = UIFont.systemFont(ofSize: 18)
        return title
    }()
    
    private lazy var loginButton: RedFTButton = {
        let button = RedFTButton()
        button.setTitle("Log in", for: .normal)
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var signupButton: BlueFTButton = {
        let button = BlueFTButton()
        button.setTitle("Sign up", for: .normal)
        button.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
        return button
    }()
    
    // MARK: - UI Functions
    
    private func setupViews() {
        self.view.addSubview(logoImage)
        self.view.addSubview(titleLabel)
        self.view.addSubview(subtitleLabel)
        self.view.addSubview(loginButton)
        self.view.addSubview(signupButton)
        
        self.setupConstraints()
    }
    
    private func setupConstraints() {
        self.logoImage.snp.makeConstraints { (make) in
            make.height.width.equalTo(120)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(150)
        }
        
        self.titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImage.snp.bottom).offset(40)
        }
        
        self.subtitleLabel.snp.makeConstraints { (make) in
            make.width.equalTo(250)
            make.centerX.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(23)
        }
        
        self.loginButton.snp.makeConstraints { (make) in
            make.height.equalTo(55)
            make.top.equalTo(subtitleLabel.snp.bottom).offset(45)
            make.left.equalToSuperview().offset(50)
            make.right.equalToSuperview().inset(50)
        }
        
        self.signupButton.snp.makeConstraints { (make) in
            make.height.equalTo(55)
            make.top.equalTo(loginButton.snp.bottom).offset(23)
            make.left.equalToSuperview().offset(50)
            make.right.equalToSuperview().inset(50)
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
    
    @objc private func didTapSignUpButton() {
        let signUpVC = FTSignUpScreenVC()
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
}
