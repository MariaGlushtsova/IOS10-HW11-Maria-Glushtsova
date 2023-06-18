//
//  ViewController.swift
//  IOS10-HW11-Maria Glushtsova
//
//  Created by Admin on 15.06.23.
//

import UIKit
import SnapKit

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
//        view.addSubview(login)
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
        
        
    }
    
    
    // MARK: - Actions


}
