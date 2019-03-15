//
//  VIPViewController.swift
//  VIP
//
//  Created by Kevin van den Hoek on 14/03/2019.
//  Copyright (c) 2019 Triple IT. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IVIPViewController: AnyObject {
	
}

class VIPViewController: UIViewController {

	var interactor: IVIPInteractor?
	var router: IVIPRouter?

	override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension VIPViewController: IVIPViewController {
	
}

extension VIPViewController {
	
}

extension VIPViewController {
	
}
