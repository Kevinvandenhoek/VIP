import Swinject

class LoginAssembly: Assembly {
    func assemble(container: Container) {
        container.register(LoginViewController.self, factory: { (r) in
            let interactor = LoginInteractor()
            let presenter = LoginPresenter()
            let router = LoginRouter()
            let vc = LoginViewController(interactor: interactor, presenter: presenter, router: router)
            vc.view.backgroundColor = UIColor.green
            return vc
        })
    }
}
