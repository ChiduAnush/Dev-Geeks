//
//  CollectionViewTableViewCell.swift
//  Netflix-clone
//
//  Created by Chidu Anush on 24/06/23.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    static let identifier = "CollectionViewTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
