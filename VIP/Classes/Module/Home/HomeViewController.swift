import UIKit

protocol IHomeDisplayLogic: AnyObject {
    func displayColor(color: UIColor)
}

class HomeViewController: UIViewController {
    private let interactor: IHomeInteractor
    private let presenter: IHomePresenter
    private let router: IHomeRouter
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("required init(coder:) not implemented")
    }
    
    init(interactor: IHomeInteractor, presenter: IHomePresenter, router: IHomeRouter) {
        self.interactor = interactor
        self.presenter = presenter
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
}

private extension HomeViewController {
    func setup() {
        setupLayout()
    }
    
    func setupLayout() {
        
    }
}

extension HomeViewController: IHomeDisplayLogic {
    func displayColor(color: UIColor) {
        view.backgroundColor = color
    }
}
