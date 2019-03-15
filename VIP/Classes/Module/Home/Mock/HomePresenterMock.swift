//
//  HomePresenterMock.swift
//  VIP
//
//  Created by Kevin van den Hoek on 14/03/2019.
//  Copyright © 2019 Triple IT. All rights reserved.
//

import UIKit

class HomePresenterMock: IHomePresenter {
    var displayLogic: IHomeDisplayLogic? {
        didSet {
            displayLogic?.displayColor(color: UIColor.red)
        }
    }
}
