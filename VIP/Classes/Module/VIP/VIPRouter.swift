//
//  VIPRouter.swift
//  VIP
//
//  Created by Kevin van den Hoek on 14/03/2019.
//  Copyright (c) 2019 Triple IT. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IVIPRouter: AnyObject {
    
}

class VIPRouter: IVIPRouter {
    
    weak var view: VIPViewController?
    
    init(view: VIPViewController) {
        self.view = view
    }
}
