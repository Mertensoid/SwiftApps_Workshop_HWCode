//
//  TableViewCell.swift
//  SwiftApps_Workshop_HWCode
//
//  Created by admin on 20.05.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    private var image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo_picture_vector")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Lorem Ipsum"
        label.font = UIFont(name: "Helvetica-Bold", size: 16)
        label.minimumScaleFactor = 12
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
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
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(image)
        addSubview(label)
        addSubview(text)
    }
    
    private func configureConstraints() {
        image.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        text.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image.heightAnchor.constraint(equalToConstant: 128),
            image.widthAnchor.constraint(equalToConstant: 128),
            image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            image.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            text.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10),
            text.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            text.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            text.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
        ])
    }

}
