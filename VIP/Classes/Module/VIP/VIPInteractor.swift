//
//  VIPInteractor.swift
//  VIP
//
//  Created by Kevin van den Hoek on 14/03/2019.
//  Copyright (c) 2019 Triple IT. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IVIPInteractor: AnyObject {
	var parameters: VIPModel.Request? { get set }
}

class VIPInteractor: IVIPInteractor {

    var presenter: IVIPPresenter?
    var manager: IVIPManager?
    var parameters: VIPModel.Request?

    init(presenter: IVIPPresenter, manager: IVIPManager) {
    	self.presenter = presenter
    	self.manager = manager
    }
}
