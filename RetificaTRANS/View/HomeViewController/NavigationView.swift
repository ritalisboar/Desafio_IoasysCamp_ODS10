//
//  NavigationView.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 03/04/22.
//

import UIKit

final class NavigationView: UIView {

// MARK: - background
    
    private lazy var homeBackground: UIImageView = {
       let homeBackground = UIImageView()
        homeBackground.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
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
        let cor = attributesColor()
        let greetingUser = UILabel()
        greetingUser.attributedText = NSAttributedString(string: "Olá, ", attributes: cor.colorDarkBlue)
        greetingUser.font = UIFont.init(name: "Mulish-Bold", size: 20)
        greetingUser.translatesAutoresizingMaskIntoConstraints = false
        return greetingUser
    }()
    
    private func constraintsGreetingUser() {
        greetingUser.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        greetingUser.topAnchor.constraint(equalTo: topAnchor, constant: 95).isActive = true
    }
    
    private lazy var boldName: UILabel = {
        let cor = attributesColor()
        let boldName = UILabel()
        boldName.attributedText = NSAttributedString(string: "[userName] 👋", attributes: cor.colorDarkBlue)
        boldName.font = UIFont.init(name: "Mulish-Black", size: 20)
        boldName.translatesAutoresizingMaskIntoConstraints = false
        return boldName
    }()
    
    private func constraintsBoldName() {
        boldName.leadingAnchor.constraint(equalTo: greetingUser.trailingAnchor).isActive = true
        boldName.topAnchor.constraint(equalTo: topAnchor, constant: 95).isActive = true
    }
    
    // MARK: - wellcomeMessage
    
    private lazy var message1: UILabel = {
        let cor = attributesColor()
        let message1 = UILabel()
        message1.attributedText = NSAttributedString(string: "Entenda como ", attributes: cor.colorDarkBlue)
        message1.font = UIFont.init(name: "Mulish-Medium", size: 30)
        message1.translatesAutoresizingMaskIntoConstraints = false
        return message1
    }()
    
    private func constrainMessage1() {
        message1.topAnchor.constraint(equalTo: greetingUser.bottomAnchor, constant: 5).isActive = true
        message1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    }
    
    private lazy var message2: UILabel = {
        let cor = attributesColor()
        let message2 = UILabel()
        message2.attributedText = NSAttributedString(string: "retificar", attributes: cor.colorDarkBlue)
        message2.font = UIFont.init(name: "Mulish-Black", size: 30)
        message2.translatesAutoresizingMaskIntoConstraints = false
        return message2
    }()
    
    private func constrainMessage2() {
        message2.topAnchor.constraint(equalTo: greetingUser.bottomAnchor, constant: 5).isActive = true
        message2.leadingAnchor.constraint(equalTo: message1.trailingAnchor).isActive = true
    }
    
    private lazy var message3: UILabel = {
        let cor = attributesColor()
        let message3 = UILabel()
        message3.attributedText = NSAttributedString(string: " nome e gênero ", attributes: cor.backgroundColorLightPink)
        message3.font = UIFont.init(name: "Mulish-Black", size: 30)
        message3.translatesAutoresizingMaskIntoConstraints = false
        return message3
    }()
    
    private func constrainMessage3() {
        message3.topAnchor.constraint(equalTo: message1.bottomAnchor, constant: 5).isActive = true
        message3.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        message3.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    }
    
    
    // MARK: - instructionPhrase
    
    private lazy var instructionPhrase: UILabel = {
        let cor = attributesColor()
        let instructionPhrase = UILabel()
        instructionPhrase.attributedText = NSAttributedString(string: "O ", attributes: cor.colorDarkBlue)
        instructionPhrase.font = UIFont.init(name: "Mulish-Medium", size: 18)
        instructionPhrase.translatesAutoresizingMaskIntoConstraints = false
        return instructionPhrase
    }()
    
    private func constrainInstructionPhrase() {
        instructionPhrase.topAnchor.constraint(equalTo: message3.bottomAnchor, constant: 30).isActive = true
        instructionPhrase.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 21.98).isActive = true
    }
    
    private lazy var instructionPhrase2: UILabel = {
        let cor = attributesColor()
        let instructionPhrase2 = UILabel()
        instructionPhrase2.attributedText = NSAttributedString(string: "passo a passo ", attributes: cor.colorDarkBlue)
        instructionPhrase2.font = UIFont.init(name: "Mulish-Black", size: 18)
        instructionPhrase2.translatesAutoresizingMaskIntoConstraints = false
        return instructionPhrase2
    }()
    
    private func constrainInstructionPhrase2() {
        instructionPhrase2.topAnchor.constraint(equalTo: message3.bottomAnchor, constant: 30).isActive = true
        instructionPhrase2.leadingAnchor.constraint(equalTo: instructionPhrase.trailingAnchor).isActive = true
    }
    
    private lazy var instructionPhrase3: UILabel = {
        let cor = attributesColor()
        let instructionPhrase3 = UILabel()
        instructionPhrase3.attributedText = NSAttributedString(string: "da retificação ", attributes: cor.colorDarkBlue)
        instructionPhrase3.font = UIFont.init(name: "Mulish-Medium", size: 18)
        instructionPhrase3.translatesAutoresizingMaskIntoConstraints = false
        return instructionPhrase3
    }()
    
    private func constrainInstructionPhrase3() {
        instructionPhrase3.topAnchor.constraint(equalTo: message3.bottomAnchor, constant: 30).isActive = true
        instructionPhrase3.leadingAnchor.constraint(equalTo: instructionPhrase2.trailingAnchor).isActive = true
    }
    
    // MARK: - startJourneyContentView
    
    private lazy var startJourneyContentView: UIImageView = {
       let startJourneyContentView = UIImageView()
        startJourneyContentView.image = UIImage(named: "backgroundJourney")
        startJourneyContentView.contentMode = .scaleAspectFill
        startJourneyContentView.layer.cornerRadius = 20
        startJourneyContentView.translatesAutoresizingMaskIntoConstraints = false
        return startJourneyContentView
    }()
    
    private func constraintsStartJourneyContentView() {
        startJourneyContentView.topAnchor.constraint(equalTo: instructionPhrase3.bottomAnchor, constant: 20).isActive = true
        startJourneyContentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        startJourneyContentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        startJourneyContentView.heightAnchor.constraint(equalToConstant: 147).isActive = true
    }
    
    
    // MARK: - startJourney
    
    private lazy var startJourney: UILabel = {
        let cor = attributesColor()
        let startJourney = UILabel()
        startJourney.textColor = .white
        startJourney.font = UIFont.init(name: "Mulish-Black", size: 16)
        startJourney.text = "Acompanhe sua documentação"
        startJourney.translatesAutoresizingMaskIntoConstraints = false
        return startJourney
    }()
    
    private func constraintsStartJourgey() {
        startJourney.topAnchor.constraint(equalTo: startJourneyContentView.topAnchor, constant: 35).isActive = true
        startJourney.leadingAnchor.constraint(equalTo: startJourneyContentView.leadingAnchor, constant: 24).isActive = true
        startJourney.bottomAnchor.constraint(equalTo: startJourneyContentView.bottomAnchor, constant: -87).isActive = true

    }
    
    // MARK: - startDescription
    
    private lazy var startDescription: UILabel = {
       let startDescription = UILabel()
        startDescription.textColor = .white
        startDescription.font = UIFont.init(name: "Mulish-SemiBold", size: 12)
        startDescription.text = "Organize seus documentos e acompanhe o processo para a alteração do prenome e gênero com a ordem recomendada pelos nossos especialistas."
        startDescription.numberOfLines = 3
        startDescription.lineBreakMode = .byWordWrapping
        startDescription.translatesAutoresizingMaskIntoConstraints = false
        return startDescription
    }()
    
    private func constraintsStartDescription() {
        startDescription.topAnchor.constraint(equalTo: startJourneyContentView.topAnchor, constant: 65).isActive = true
        startDescription.leadingAnchor.constraint(equalTo: startJourneyContentView.leadingAnchor, constant: 24).isActive = true
        startDescription.trailingAnchor.constraint(equalTo: startJourneyContentView.trailingAnchor, constant: -24).isActive = true
    }
    
    
    // MARK: - progressBar
    
//    private lazy var progressBarSpace: UIView = {
//        let progressBarSpace = UIView()
//        progressBarSpace.backgroundColor = .white
//        progressBarSpace.layer.cornerRadius = 70
//        progressBarSpace.frame = CGRect(x: 0, y: 0, width: 299, height: 6)
//        return progressBarSpace
//    }()
//    
//    private func constraintsProgressBarSace() {
//        progressBarSpace.topAnchor.constraint(equalTo: startDescription.bottomAnchor, constant: 20).isActive = true
//        progressBarSpace.leadingAnchor.constraint(equalTo: startJourneyContentView.leadingAnchor, constant: 18).isActive = true
//        progressBarSpace.bottomAnchor.constraint(equalTo: startJourneyContentView.bottomAnchor, constant: -17).isActive = true
//        progressBarSpace.trailingAnchor.constraint(equalTo: startJourneyContentView.trailingAnchor, constant: -18).isActive = true
//    }
    
    
    // MARK: - inits
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        constraintsHomeBackground()
        constraintsGreetingUser()
        constraintsBoldName()
        constrainMessage1()
        constrainMessage2()
        constrainMessage3()
        constrainInstructionPhrase()
        constrainInstructionPhrase2()
        constrainInstructionPhrase3()
        constraintsStartJourneyContentView()
        constraintsStartJourgey()
        constraintsStartDescription()
//        constraintsProgressBarSace()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(homeBackground)
        addSubview(greetingUser)
        addSubview(boldName)
        addSubview(message1)
        addSubview(message2)
        addSubview(message3)
        addSubview(instructionPhrase)
        addSubview(instructionPhrase2)
        addSubview(instructionPhrase3)
        addSubview(startJourneyContentView)
        addSubview(startJourney)
        addSubview(startDescription)
//        addSubview(progressBarSpace)
    }
}