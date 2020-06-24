//
//  TownTableViewCell.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/23/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class TownTableViewCell: UITableViewCell {
    
    var town_image = UIImageView()
    var town_label_name = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(town_image)
        addSubview(town_label_name)
        set_layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set_layout() {
        town_label_name.numberOfLines = 0
        town_label_name.adjustsFontSizeToFitWidth = true
    }

}
