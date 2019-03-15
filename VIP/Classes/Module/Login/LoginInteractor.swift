import UIKit

protocol ILoginInteractor {
    var presenter: ILoginPresenter? { get set }
}

class LoginInteractor: ILoginInteractor {
    var presenter: ILoginPresenter?
    
}
