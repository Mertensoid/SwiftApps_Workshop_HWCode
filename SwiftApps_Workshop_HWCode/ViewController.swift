//
//  ViewController.swift
//  SwiftApps_Workshop_HWCode
//
//  Created by admin on 03.05.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Private properties
    
    private var image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo_picture_vector")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Авторизация"
        label.font = UIFont(name: "Helvetica", size: 36)
        label.minimumScaleFactor = 12
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    private var loginTextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10
        textField.layer.borderColor = UIColor.red.cgColor
        textField.layer.borderWidth = 1
        textField.layer.masksToBounds = true
        return textField
    }()
    private var passwordTextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10
        textField.layer.borderColor = UIColor.red.cgColor
        textField.layer.borderWidth = 1
        textField.layer.masksToBounds = true
        return textField
    }()
    private var button = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Войти", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        configureConstraints()
    }

    // MARK: - Private functions
    
    private func addSubviews() {
        view.addSubview(image)
        view.addSubview(label)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(button)
    }
    
    private func configureConstraints() {
        image.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.widthAnchor.constraint(equalToConstant: view.frame.size.width / 3),
            image.heightAnchor.constraint(equalToConstant: view.frame.size.width / 3),
            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 50),
            
            loginTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginTextField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            loginTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            button.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
}

