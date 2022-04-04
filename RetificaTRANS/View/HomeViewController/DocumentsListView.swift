//
//  DocumentsListView.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 03/04/22.
//

import UIKit

final class DocumentsListView: UIView {

// MARK: - background
    
    private lazy var homeBackground: UIImageView = {
       let homeBackground = UIImageView()
        homeBackground.image = UIImage.init(named: "backgroundTeste")
        homeBackground.contentMode = .scaleAspectFill
        homeBackground.translatesAutoresizingMaskIntoConstraints = false
        return homeBackground
    }()
    
    private func constraintsHomeBackground() {
        homeBackground.topAnchor.constraint(equalTo: topAnchor).isActive = true
        homeBackground.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        homeBackground.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        homeBackground.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
  // MARK: - greenting user
    
    private lazy var greetingUser: UILabel = {
        let greetingUser = UILabel()
        greetingUser.textColor = .black
        greetingUser.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        greetingUser.text = "Olá, [userName]"
        greetingUser.translatesAutoresizingMaskIntoConstraints = false
        return greetingUser
    }()
    
    private func constraintsGreetingUser() {
        greetingUser.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 37).isActive = true
        greetingUser.topAnchor.constraint(equalTo: topAnchor, constant: 106).isActive = true
    }
    
    // MARK: - wellcomeMessage
    
    private lazy var wellcomeMessage: UILabel = {
        let wellcomeMessage = UILabel()
        wellcomeMessage.textColor = .black
        wellcomeMessage.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        wellcomeMessage.text = "Bem vinde ao [appName]"
        wellcomeMessage.numberOfLines = 2
        wellcomeMessage.lineBreakMode = .byWordWrapping
        wellcomeMessage.translatesAutoresizingMaskIntoConstraints = false
        return wellcomeMessage
    }()
    
    private func constraintWellcomeMessage() {
        wellcomeMessage.topAnchor.constraint(equalTo: greetingUser.bottomAnchor, constant: 14).isActive = true
        wellcomeMessage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 37).isActive = true
        wellcomeMessage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -56).isActive = true
    }
    
    // MARK: - startJourneyContentView
    
    private lazy var startJourneyContentView: UIView = {
       let startJourneyContentView = UIView()
        startJourneyContentView.backgroundColor = .black
       // startJourneyContentView.layer.cornerRadius = 16
        startJourneyContentView.translatesAutoresizingMaskIntoConstraints = false
        return startJourneyContentView
    }()
    
    private func constraintsStartJourneyContentView() {
        startJourneyContentView.topAnchor.constraint(equalTo: wellcomeMessage.bottomAnchor, constant: 29).isActive = true
        startJourneyContentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28).isActive = true
        startJourneyContentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -28).isActive = true
    }
    
    // MARK: - inits
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        constraintsHomeBackground()
        constraintsGreetingUser()
        constraintWellcomeMessage()
        constraintsStartJourneyContentView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(homeBackground)
        addSubview(greetingUser)
        addSubview(wellcomeMessage)
        addSubview(startJourneyContentView)
    }
}
