//
//  UIElements.swift
//  autolayoutiOS
//
//  Created by Fabrício Guilhermo on 02/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import UIKit

class UIElements {
    lazy var backgroundImage: UIView = {
        let backgroundImage = UIView()

        return backgroundImage
    }()

    lazy var pageTitle: UIView = {
        let pageTitle = UIView()

        return pageTitle
    }()

    lazy var myInfoCard: UIView = {
        let myInfoCard = UIView()

        return myInfoCard
    }()

    lazy var myInfoCardTitle: UIView = {
        let myInfoCardTitle = UIView()

        return myInfoCardTitle
    }()

    lazy var myInfoCardMoney: UIView = {
        let myInfoCardMoney = UIView()

        return myInfoCardMoney
    }()

    lazy var myInfoCardCreditNumber: UIView = {
        let myInfoCardCreditNumber = UIView()

        return myInfoCardCreditNumber
    }()

    lazy var myInfoCardBell: UIView = {
        let myInfoCardBell = UIView()

        return myInfoCardBell
    }()

    lazy var myInfoCardPhoto: UIView = {
        let myInfoCardPhoto = UIView()

        return myInfoCardPhoto
    }()

    lazy var myInfoCardCountryMoney: UIView = {
        let myInfoCardCountryMoney = UIView()

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

    func setupUI(viewController: UIViewController) {
        viewController.view.addSubview(backgroundImage)
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
}
