//
//  DocumentsListView.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 03/04/22.
//

import UIKit

final class DocumentsListPageView: UIView {

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
        greetingUser.font = UIFont.init(name: "Roboto-Medium", size: 18)
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
        wellcomeMessage.font = UIFont.init(name: "Roboto-Black", size: 35)
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
        startJourneyContentView.heightAnchor.constraint(equalToConstant: 137).isActive = true
    }
    
    // MARK: - startJourney
    
    private lazy var startJourney: UILabel = {
       let startJourney = UILabel()
        startJourney.textColor = .white
        startJourney.font = UIFont.init(name: "Roboto-Black", size: 20)
        startJourney.text = "Iniciar minha jornada"
        startJourney.translatesAutoresizingMaskIntoConstraints = false
        return startJourney
    }()
    
    private func constraintsStartJourgey() {
        startJourney.topAnchor.constraint(equalTo: startJourneyContentView.topAnchor, constant: 40).isActive = true
        startJourney.leadingAnchor.constraint(equalTo: startJourneyContentView.leadingAnchor, constant: 36).isActive = true
        startJourney.bottomAnchor.constraint(equalTo: startJourneyContentView.bottomAnchor, constant: -74).isActive = true

    }

    // MARK: - startChevron
    
    private lazy var startJourneyChevron: UIImageView = {
       let startJourneyChevron = UIImageView()
        startJourneyChevron.tintColor = .white
        startJourneyChevron.image = UIImage(systemName: "chevron.right")
        startJourneyChevron.translatesAutoresizingMaskIntoConstraints = false
        return startJourneyChevron
    }()
    
    private func constraintsstartJourneyChevron() {
        startJourneyChevron.topAnchor.constraint(equalTo: startJourneyContentView.topAnchor, constant: 44).isActive = true
        startJourneyChevron.leadingAnchor.constraint(equalTo: startJourney.trailingAnchor, constant: 15).isActive = true
        startJourneyChevron.bottomAnchor.constraint(equalTo: startJourneyContentView.bottomAnchor, constant: -76.85).isActive = true

    }
    
    // MARK: - startDescription
    
    private lazy var startDescription: UILabel = {
       let startDescription = UILabel()
        startDescription.textColor = .white
        startDescription.font = UIFont.init(name: "Roboto-Medium", size: 13)
        startDescription.text = "Acompanhe o seu progresso na solicitação de sua retificação de documentos"
        startDescription.numberOfLines = 2
        startDescription.lineBreakMode = .byWordWrapping
        startDescription.translatesAutoresizingMaskIntoConstraints = false
        return startDescription
    }()
    
    private func constraintsStartDescription() {
        startDescription.topAnchor.constraint(equalTo: startJourneyContentView.topAnchor, constant: 71).isActive = true
        startDescription.leadingAnchor.constraint(equalTo: startJourneyContentView.leadingAnchor, constant: 36).isActive = true
//        startDescription.bottomAnchor.constraint(equalTo: startJourneyContentView.bottomAnchor, constant: -36).isActive = true
        startDescription.trailingAnchor.constraint(equalTo: startJourneyContentView.trailingAnchor, constant: -50).isActive = true
    }
    
    // MARK: - inits
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        constraintsHomeBackground()
        constraintsGreetingUser()
        constraintWellcomeMessage()
        constraintsStartJourneyContentView()
        constraintsStartJourgey()
        constraintsstartJourneyChevron()
        constraintsStartDescription()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(homeBackground)
        addSubview(greetingUser)
        addSubview(wellcomeMessage)
        addSubview(startJourneyContentView)
        addSubview(startJourney)
        addSubview(startJourneyChevron)
        addSubview(startDescription)
    }
}
