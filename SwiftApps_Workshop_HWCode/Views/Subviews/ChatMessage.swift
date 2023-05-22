//
//  ChatMessage.swift
//  SwiftApps_Workshop_HWCode
//
//  Created by admin on 20.05.2023.
//

import UIKit

class ChatMessage: UIView {
    
    private var text: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 14)
        label.minimumScaleFactor = 12
        label.textColor = .gray
        label.textAlignment = .left
        return label
    }()
    
    init(frame: CGRect, color: UIColor) {
        super.init(frame: frame)
        addViews()
        configureConstraints()
        configureView(color: color)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(text)
    }
    
    private func configureConstraints() {
        text.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            text.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            text.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            text.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    private func configureView(color: UIColor) {
        self.backgroundColor = color
        self.layer.cornerRadius = 10
    }
}
