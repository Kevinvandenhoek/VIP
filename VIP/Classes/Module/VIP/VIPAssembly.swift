//
//  VIPAssembly.swift
//  VIP
//
//  Created by Kevin van den Hoek on 14/03/2019.
//  Copyright (c) 2019 Triple IT. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import Foundation
import Swinject

class VIPAssembly: Assembly {

	func assemble(container: Container) {
		container.register(VIPViewController.self) { (r, parameters: VIPModel.Request) in
			let view = VIPViewController()
			let interactor = r.resolve(IVIPInteractor.self, argument: view as IVIPViewController)!
			let router = r.resolve(IVIPRouter.self, argument: view)!
			interactor.parameters = parameters
			view.interactor = interactor
			view.router = router
			return view
		}

		container.register(IVIPInteractor.self) { (r, view: IVIPViewController) in			
			let presenter = r.resolve(IVIPPresenter.self, argument: view)!
			let manager = r.resolve(IVIPManager.self)!
			let interactor = VIPInteractor(presenter: presenter, manager: manager)
			return interactor
		}

		container.register(IVIPPresenter.self) { (r, view: IVIPViewController) in
			return VIPPresenter(view: view)
		}

		container.register(IVIPRouter.self) { (r, view: VIPViewController) in
			return VIPRouter(view: view)
		}

		container.register(IVIPManager.self) { r in
			return VIPManager()
		}
	}
}
