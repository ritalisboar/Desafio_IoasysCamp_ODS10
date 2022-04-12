//
//  HomeTableView.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 09/04/22.
//

import UIKit

class HomeTableView: UITableViewCell {
    static let identifier = "HomeTableView"
//    let navigationView = HeaderView()
    
    private let statusView: UIView = {
        let statusView = UIView()
        statusView.backgroundColor = .systemPink
        statusView.layer.cornerRadius = 13
        statusView.translatesAutoresizingMaskIntoConstraints = false
        return statusView
    }()
    
    private let statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = ""
        statusLabel.font = UIFont(name: "Mulish-Regular", size: 12)
        statusLabel.textColor = .white
//        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }()
    
    private let titleDoc: UIView = {
        let titleDoc = UIView()
        titleDoc.backgroundColor = .systemPink
        titleDoc.layer.cornerRadius = 13
        titleDoc.translatesAutoresizingMaskIntoConstraints = false
        return titleDoc
    }()
    
    private let descriptionDoc: UILabel = {
        let descriptionDoc = UILabel()
        descriptionDoc.text = "Pendente"
        descriptionDoc.font = UIFont(name: "Mulish-Regular", size: 12)
        descriptionDoc.textColor = .white
//        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return descriptionDoc
    }()
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        contentView.addSubview(statusView)
        contentView.addSubview(statusLabel)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        statusView.frame = CGRect(x: 20, y: 20, width: 77, height: 25)
        statusView.addSubview(statusLabel)
        statusLabel.frame = CGRect(x: 13, y: 0, width: 77, height: 25)
        
//        statusLabel.layer.position = .init(statusView.center)
//        statusLabel.frame = CGRect(x: self.statusLabel.center.x, y: self.statusLabel.center.y, width: nil, height: nil)
//        statusLabel.center.y = self.statusView.center.y
//        statusLabel.center.x = self.statusView.center.x

    }
}

