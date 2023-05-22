//
//  ChatViewController.swift
//  SwiftApps_Workshop_HWCode
//
//  Created by admin on 20.05.2023.
//

import UIKit

class ChatViewController: UIViewController {
    
    private var message1: ChatMessage = {
        let message = ChatMessage(frame: CGRect(), color: .systemTeal)
        return message
    }()
    
    private var message2: ChatMessage = {
        let message = ChatMessage(frame: CGRect(), color: .systemYellow)
        return message
    }()
    
    private var message3: ChatMessage = {
        let message = ChatMessage(frame: CGRect(), color: .systemTeal)
        return message
    }()
    
    private var sendMessageView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    private var divider: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.systemGray4
        return view
    }()
    private var messageText: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray4.cgColor
        textField.layer.cornerRadius = 10
        return textField
    }()
    
    private var sendButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Отправить", for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        configureConstraints()
        configureView()
    }
    
    private func addViews() {
        view.addSubview(message1)
        view.addSubview(message2)
        view.addSubview(message3)
        view.addSubview(sendMessageView)
        sendMessageView.addSubview(divider)
        sendMessageView.addSubview(messageText)
        sendMessageView.addSubview(sendButton)
    }
    
    private func configureConstraints() {
        message1.translatesAutoresizingMaskIntoConstraints = false
        message2.translatesAutoresizingMaskIntoConstraints = false
        message3.translatesAutoresizingMaskIntoConstraints = false
        sendMessageView.translatesAutoresizingMaskIntoConstraints = false
        divider.translatesAutoresizingMaskIntoConstraints = false
        messageText.translatesAutoresizingMaskIntoConstraints = false
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            message1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            message1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            message1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            
            message2.topAnchor.constraint(equalTo: message1.bottomAnchor, constant: 10),
            message2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            message2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            
            message3.topAnchor.constraint(equalTo: message2.bottomAnchor, constant: 10),
            message3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            message3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            
            sendMessageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            sendMessageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sendMessageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            divider.topAnchor.constraint(equalTo: sendMessageView.topAnchor),
            divider.leadingAnchor.constraint(equalTo: sendMessageView.leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: sendMessageView.trailingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 1),
            
            messageText.leadingAnchor.constraint(equalTo: sendMessageView.leadingAnchor, constant: 10),
            messageText.topAnchor.constraint(equalTo: sendMessageView.topAnchor, constant: 10),
            messageText.bottomAnchor.constraint(equalTo: sendMessageView.bottomAnchor, constant: -10),
            messageText.heightAnchor.constraint(equalToConstant: 50),
            messageText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            
            sendButton.leadingAnchor.constraint(equalTo: messageText.trailingAnchor, constant: 10),
            sendButton.trailingAnchor.constraint(equalTo: sendMessageView.trailingAnchor, constant: -10),
            sendButton.topAnchor.constraint(equalTo: sendMessageView.topAnchor, constant: 10),
            sendButton.bottomAnchor.constraint(equalTo: sendMessageView.bottomAnchor, constant: -10),
            sendButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    private func configureView() {
        view.backgroundColor = .white
    }
}
