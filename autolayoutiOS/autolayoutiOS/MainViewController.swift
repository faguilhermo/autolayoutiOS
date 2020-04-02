//
//  MainViewController.swift
//  autolayoutiOS
//
//  Created by Fabrício Guilhermo on 02/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    lazy var backgroundImage: UIView = {
        let backgroundImage = UIView()
        backgroundImage.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        return backgroundImage
    }()

    lazy var pageTitle: UIView = {
        let pageTitle = UIView()
        pageTitle.backgroundColor = #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 1)
        return pageTitle
    }()

    lazy var myInfoCard: UIView = {
        let myInfoCard = UIView()
        myInfoCard.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        myInfoCard.layer.cornerRadius = 25
        return myInfoCard
    }()

    lazy var myInfoCardTitle: UIView = {
        let myInfoCardTitle = UIView()
        myInfoCardTitle.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        return myInfoCardTitle
    }()

    lazy var myInfoCardMoney: UIView = {
        let myInfoCardMoney = UIView()
        myInfoCardMoney.backgroundColor = #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 1)
        return myInfoCardMoney
    }()

    lazy var myInfoCardCreditNumber: UIView = {
        let myInfoCardCreditNumber = UIView()
        myInfoCardCreditNumber.backgroundColor = #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 1)
        return myInfoCardCreditNumber
    }()

    lazy var myInfoCardBell: UIView = {
        let myInfoCardBell = UIView()
        myInfoCardBell.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        return myInfoCardBell
    }()

    lazy var myInfoCardPhoto: UIView = {
        let myInfoCardPhoto = UIView()
        myInfoCardPhoto.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        myInfoCardPhoto.layer.cornerRadius = 20
        return myInfoCardPhoto
    }()

    lazy var myInfoCardCountryMoney: UIView = {
        let myInfoCardCountryMoney = UIView()
        myInfoCardCountryMoney.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        return myInfoCardCountryMoney
    }()

    lazy var transferLimitCard: UIView = {
        let transferLimitCard = UIView()
        return transferLimitCard
    }()

    lazy var transferLimitCardTitle: UIView = {
        let transferLimitCardTitle = UIView()
        return transferLimitCardTitle
    }()

    lazy var transferLimitCardMoney: UIView = {
        let transferLimitCardMoney = UIView()
        return transferLimitCardMoney
    }()

    lazy var transferLimitCardGraphic: UIView = {
        let transferLimitCardGraphic = UIView()
        return transferLimitCardGraphic
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setupUI()
        setupAutolayout()
    }

    func setupUI() {
        view.addSubview(backgroundImage)
        backgroundImage.addSubview(pageTitle)
        backgroundImage.addSubview(myInfoCard)
        myInfoCard.addSubview(myInfoCardTitle)
        myInfoCard.addSubview(myInfoCardMoney)
        myInfoCard.addSubview(myInfoCardCreditNumber)
        myInfoCard.addSubview(myInfoCardBell)
        myInfoCard.addSubview(myInfoCardPhoto)
        myInfoCard.addSubview(myInfoCardCountryMoney)

        backgroundImage.addSubview(transferLimitCard)
        transferLimitCard.addSubview(transferLimitCardGraphic)
        transferLimitCard.addSubview(transferLimitCardTitle)
        transferLimitCard.addSubview(transferLimitCardMoney)
    }

    func setupAutolayout() {
        backgroundImage.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .zero, size: .init(width: .zero, height: view.frame.height/2))
        pageTitle.anchor(top: backgroundImage.topAnchor, leading: backgroundImage.leadingAnchor, bottom: nil, trailing: backgroundImage.trailingAnchor, padding: .init(top: 50, left: 20, bottom: 20, right: 20), size: .init(width: .zero, height: 35))
        myInfoCard.anchor(top: pageTitle.bottomAnchor, leading: backgroundImage.leadingAnchor, bottom: nil, trailing: backgroundImage.trailingAnchor, padding: .init(top: 20, left: 20, bottom: 0, right: 20), size: .init(width: .zero, height: 180))
        myInfoCardTitle.anchor(top: myInfoCard.topAnchor, leading: myInfoCard.leadingAnchor, bottom: nil, trailing: myInfoCard.trailingAnchor, padding: .init(top: 20, left: 20, bottom: 0, right: 20), size: .init(width: .zero, height: 20))
        myInfoCardMoney.anchor(top: myInfoCardTitle.bottomAnchor, leading: myInfoCard.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 20, bottom: 0, right: 0), size: .zero)
        myInfoCardPhoto.anchor(top: myInfoCardTitle.bottomAnchor, leading: myInfoCardBell.trailingAnchor, bottom: nil, trailing: myInfoCard.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 20, right: 20), size: .init(width: 40, height: 40))
        myInfoCardCreditNumber.anchor(top: myInfoCardMoney.bottomAnchor, leading: myInfoCard.leadingAnchor, bottom: myInfoCard.bottomAnchor, trailing: nil, padding: .init(top: 20, left: 20, bottom: 20, right: 0), size: .init(width: 0, height: 35))
        myInfoCardBell.anchor(top: myInfoCardTitle.bottomAnchor, leading: myInfoCardMoney.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 20, bottom: 20, right: 0), size: .init(width: 40, height: 40))
        myInfoCardCountryMoney.anchor(top: nil, leading: myInfoCardCreditNumber.trailingAnchor, bottom: myInfoCard.bottomAnchor, trailing: myInfoCard.trailingAnchor, padding: .init(top: .zero, left: 40, bottom: 20, right: 20), size: .init(width: 100, height: 35))
    }
}
