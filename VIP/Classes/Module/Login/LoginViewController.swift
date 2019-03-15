import UIKit

protocol ILoginDisplayLogic: AnyObject {
    func displayColor(color: UIColor)
}

class LoginViewController: UIViewController {
    private let interactor: ILoginInteractor
    private let presenter: ILoginPresenter
    private let router: ILoginRouter
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("required init(coder:) not implemented")
    }
    
    init(interactor: ILoginInteractor, presenter: ILoginPresenter, router: ILoginRouter) {
        self.interactor = interactor
        self.presenter = presenter
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
}

private extension LoginViewController {
    func setup() {
        setupLayout()
    }
    
    func setupLayout() {
        
    }
}

extension LoginViewController: ILoginDisplayLogic {
    func displayColor(color: UIColor) {
        view.backgroundColor = color
    }
}
