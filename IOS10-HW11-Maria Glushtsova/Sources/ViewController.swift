//
//  ViewController.swift
//  IOS10-HW11-Maria Glushtsova
//
//  Created by Admin on 15.06.23.
//

import UIKit
import SnapKit



class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var login: UILabel = {
        let login = UILabel()
        login.text = "Login"
        login.font = UIFont.boldSystemFont(ofSize: 30)
        return login
    }()
    
    private lazy var loginField: UITextField = {
        let loginField = UITextField()
        loginField.backgroundColor = UIColor(named: "colorField")
        loginField.layer.cornerRadius = 20
        loginField.textColor = UIColor(named: "text color")
        loginField.textAlignment = .center
        loginField.placeholder = "Username"
        loginField.setLeftIcon(UIImage(named: "user") ?? UIImage())
        loginField.setRightIcon(UIImage(named: "check-mark") ?? UIImage())
        return loginField
    }()
    
    private lazy var passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.backgroundColor = UIColor(named: "colorField")
        passwordField.layer.cornerRadius = 20
        passwordField.textColor = UIColor(named: "text color")
        passwordField.textAlignment = .center
        passwordField.placeholder = "Password"
        passwordField.setLeftIcon(UIImage(named: "password") ?? UIImage())
        passwordField.setRightIcon(UIImage(named: "check-mark") ?? UIImage())
        return passwordField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "green")
        button.layer.cornerRadius = 20
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor(named: "text color"), for: .normal)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        return button
    }()
    
    private lazy var leftLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "colorField")
        view.layer.shadowRadius = 10
        return view
    }()
    
    private lazy var connectWith: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = UIColor(named: "colorField")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    private lazy var rightLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "colorField")
        view.layer.shadowRadius = 10
        return view
    }()
    
    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.backgroundColor = UIColor(named: "green")
        button.layer.cornerRadius = 20
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.backgroundColor = UIColor(named: "green")
        button.layer.cornerRadius = 20
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    private lazy var facebookImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "facebook"))
        return image
    }()
    
    private lazy var twitterImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "twitter"))
        return image
    }()
    
    private lazy var signUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Dont have account?"
        label.textColor = UIColor(named: "colorField")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        
        view.addSubview(login)
        view.addSubview(loginField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(leftLine)
        view.addSubview(connectWith)
        view.addSubview(rightLine)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
        view.addSubview(facebookImage)
        view.addSubview(twitterImage)
        view.addSubview(signUpLabel)
        view.addSubview(signUpButton)
        
    }
    
    private func setupLayout() {
        
        login.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(150)
        }
        
        loginField.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(230)
        }
        
        passwordField.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(290)
        }
        
        loginButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(370)
        }
        
        forgotPasswordButton.snp.makeConstraints { make in
            make.height.equalTo(10)
            make.width.equalTo(200)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(430)
        }
        
        leftLine.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.width.equalTo(80)
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(635)
        }

        connectWith.snp.makeConstraints { make in
            make.height.equalTo(10)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(630)
        }
        
        rightLine.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.width.equalTo(80)
            make.right.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(635)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(160)
            make.left.equalToSuperview().inset(30)
            make.top.equalToSuperview().inset(670)
        }
        
        twitterButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(160)
            make.right.equalToSuperview().inset(30)
            make.top.equalToSuperview().inset(670)
        }
        
        facebookImage.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(20)
            make.left.equalTo(facebookButton).inset(20)
            make.centerY.equalTo(facebookButton)
        }
        
        twitterImage.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(20)
            make.left.equalTo(twitterButton).inset(20)
            make.centerY.equalTo(twitterButton)
        }
        
        signUpLabel.snp.makeConstraints { make in
            make.height.equalTo(10)
            make.left.equalToSuperview().inset(90)
            make.top.equalToSuperview().inset(750)
        }

        signUpButton.snp.makeConstraints { make in
            make.height.equalTo(10)
            make.width.equalTo(200)
            make.left.equalToSuperview().inset(150)
            make.top.equalToSuperview().inset(750)
        }
    }
    
    // MARK: - Actions
    
    
    
    }


extension UITextField {
    
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconConteinerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconConteinerView.addSubview(iconView)
        leftView = iconConteinerView
        leftViewMode = .always
    }
    
}

extension UITextField {
    
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: -30, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconConteinerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconConteinerView.addSubview(iconView)
        rightView = iconConteinerView
        rightViewMode = .whileEditing
    }
    
}
