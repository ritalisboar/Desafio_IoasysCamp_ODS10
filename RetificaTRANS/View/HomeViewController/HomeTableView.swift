//
//  HomeTableView.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 09/04/22.
//

import UIKit

class HomeTableView: UITableViewCell {
    
    var tableCellComposition = TableCellComposition()
    
    var scrollView: UIScrollView = {
        let scrollViewCell = UIScrollView()
        return scrollViewCell
    }()
    
    static let identifier = "HomeTableView"

 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        contentView.addSubview(tableCellComposition)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        tableCellComposition.frame = CGRect(x: 0,
                                            y: 0,
                                            width: contentView.frame.size.width - 20,
                                            height: contentView.frame.size.height)
    }
}

