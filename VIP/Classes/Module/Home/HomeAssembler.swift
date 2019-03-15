//
//  HomeAssembler.swift
//  VIP
//
//  Created by Kevin van den Hoek on 14/03/2019.
//  Copyright © 2019 Triple IT. All rights reserved.
//

import UIKit

protocol IHomeAssembler {
    func assemble(navigationController: UINavigationController) -> HomeViewController
    func makePresenter() -> IHomePresenter
    func makeInteractor() -> IHomeInteractor
    func makeRouter() -> IHomeRouter
}

extension IHomeAssembler {
    func assemble(navigationController: UINavigationController) -> HomeViewController {
        var presenter = makePresenter()
        var interactor = makeInteractor()
        var router = makeRouter()
        let viewController = HomeViewController(interactor: interactor, presenter: presenter, router: router)
        presenter.displayLogic = viewController
        router.navigationController = navigationController
        interactor.presenter = presenter
        return viewController
    }
}

class HomeAssembler: IHomeAssembler {
    
    func makeRouter() -> IHomeRouter {
        return HomeRouter()
    }
    
    func makePresenter() -> IHomePresenter {
        return HomePresenter()
    }
    
    func makeInteractor() -> IHomeInteractor {
        return HomeInteractor()
    }
}

class TestHomeAssembler: IHomeAssembler {
    func makeRouter() -> IHomeRouter {
        return HomeRouter()
    }
    
    func makePresenter() -> IHomePresenter {
        return HomePresenterMock()
    }
    
    func makeInteractor() -> IHomeInteractor {
        return HomeInteractor()
    }
}
