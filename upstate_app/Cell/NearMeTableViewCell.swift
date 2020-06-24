//
//  NearMeTableViewCell.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/23/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class NearMeTableViewCell: UITableViewCell {
    
    var near_meImage = UIImageView()
    var near_meTitleLabel = UILabel()
    var near_meAddressLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(near_meImage)
        addSubview(near_meTitleLabel)
        addSubview(near_meAddressLabel)
        content_layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setContent(data: NearMe) {
        near_meImage.image = data.image
        near_meTitleLabel.text = data.title
        near_meAddressLabel.text = data.address
    }
    
    func content_layout() {
        near_meImage.layer.cornerRadius = 10
        near_meImage.clipsToBounds = true
        
        near_meTitleLabel.numberOfLines = 0
        near_meTitleLabel.adjustsFontSizeToFitWidth = true
        near_meAddressLabel.numberOfLines = 0
        near_meAddressLabel.adjustsFontSizeToFitWidth = true
        
        near_meImage.translatesAutoresizingMaskIntoConstraints = false
        near_meImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        near_meImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        near_meImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        near_meImage.widthAnchor.constraint(equalTo: near_meImage.heightAnchor, multiplier: 16/12).isActive = true
        
        near_meTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        near_meTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        near_meTitleLabel.leadingAnchor.constraint(equalTo: near_meImage.trailingAnchor, constant: 20).isActive = true
        near_meTitleLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        near_meTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        near_meAddressLabel.translatesAutoresizingMaskIntoConstraints = false
        near_meAddressLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        near_meAddressLabel.leadingAnchor.constraint(equalTo: near_meImage.trailingAnchor, constant: 20).isActive = true
        near_meAddressLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        near_meAddressLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    }
}
