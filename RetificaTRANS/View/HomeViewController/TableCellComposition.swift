//
//  TableCellComposition.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 11/04/22.
//

import UIKit

class TableCellComposition: UIView {

    private let statusView: UIView = {
        let statusView = UIView()
        statusView.backgroundColor = .systemPink //UIColor(named: "")
        statusView.layer.cornerRadius = 11
        statusView.translatesAutoresizingMaskIntoConstraints = false
        return statusView
    }()
    
    private func constraintsStatusView() {
        statusView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        statusView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        statusView.widthAnchor.constraint(equalTo: widthAnchor, constant: -288).isActive = true
        statusView.heightAnchor.constraint(equalTo: heightAnchor, constant: -110).isActive = true
    }
    
    private let statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = "oioi"
        statusLabel.font = UIFont(name: "Mulish-Regular", size: 12)
        statusLabel.textColor = .white
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }()
    
    private func constraintsStatusLabel() {
        statusLabel.centerXAnchor.constraint(equalTo: statusView.centerXAnchor).isActive = true
        statusLabel.centerYAnchor.constraint(equalTo: statusView.centerYAnchor).isActive = true
    }
    
    private let custoView: UIView = {
        let custoView = UIView()
        custoView.backgroundColor = .link //UIColor(named: "")
        custoView.layer.cornerRadius = 11
        custoView.translatesAutoresizingMaskIntoConstraints = false
        return custoView
    }()
    
    private func constraintsCustoView() {
        custoView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        custoView.leadingAnchor.constraint(equalTo: statusView.trailingAnchor, constant: 5).isActive = true
        custoView.widthAnchor.constraint(equalTo: widthAnchor, constant: -288).isActive = true
        custoView.heightAnchor.constraint(equalTo: heightAnchor, constant: -110).isActive = true
    }
    
    private let custoLabel: UILabel = {
        let custoLabel = UILabel()
        custoLabel.text = "oioi"
        custoLabel.font = UIFont(name: "Mulish-Regular", size: 12)
        custoLabel.textColor = .white
        custoLabel.translatesAutoresizingMaskIntoConstraints = false
        return custoLabel
    }()
    
    private func constraintsCustoLabel() {
        custoLabel.centerXAnchor.constraint(equalTo: custoView.centerXAnchor).isActive = true
        custoLabel.centerYAnchor.constraint(equalTo: custoView.centerYAnchor).isActive = true
    }
    
    private let titleDoc: UILabel = {
        let titleDoc = UILabel()
        titleDoc.text = "[nome da certidão]"
        titleDoc.font = UIFont(name: "Mulish-Bold", size: 18)
        titleDoc.textColor = .black
        titleDoc.translatesAutoresizingMaskIntoConstraints = false
        return titleDoc
    }()
    
    private func constraintsTitleDoc() {
        titleDoc.topAnchor.constraint(equalTo: custoView.bottomAnchor, constant: 10).isActive = true
        titleDoc.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        titleDoc.widthAnchor.constraint(equalTo: widthAnchor, constant: 3).isActive = true
    }
    
    private let chevronImage: UIImageView = {
        let chevronImage = UIImageView()
        chevronImage.image = UIImage(systemName: "chevron.right")
        chevronImage.tintColor = .black
        chevronImage.translatesAutoresizingMaskIntoConstraints = false
        return chevronImage
    }()
    
    private func constraintsChevronImage() {
        chevronImage.centerYAnchor.constraint(equalTo: titleDoc.centerYAnchor).isActive = true
        chevronImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    private let descriptionDoc: UILabel = {
        let descriptionDoc = UILabel()
        descriptionDoc.text = "PendentePendente PendentePendente PendentePendente PendentePendente PendentePendente PendentePendente PendentePendente PendentePendente"
        descriptionDoc.font = UIFont(name: "Mulish-Medium", size: 12)
        descriptionDoc.textColor = .black
        descriptionDoc.textAlignment = .left
        descriptionDoc.numberOfLines = 2
        descriptionDoc.lineBreakMode = .byTruncatingTail
        descriptionDoc.translatesAutoresizingMaskIntoConstraints = false
        return descriptionDoc
    }()
    
    private func constraintsDescriptionDoc() {
        descriptionDoc.topAnchor.constraint(equalTo: titleDoc.bottomAnchor, constant: 5).isActive = true
        descriptionDoc.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        descriptionDoc.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        cellSubviews()
        constraintsStatusView()
        constraintsStatusLabel()
        constraintsCustoView()
        constraintsCustoLabel()
        constraintsTitleDoc()
        constraintsChevronImage()
        constraintsDescriptionDoc()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func cellSubviews() {
        addSubview(statusView)
        addSubview(statusLabel)
        addSubview(custoView)
        addSubview(custoLabel)
        addSubview(titleDoc)
        addSubview(chevronImage)
        addSubview(descriptionDoc)
    }
}
