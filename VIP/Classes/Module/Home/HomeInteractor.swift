import UIKit

protocol IHomeInteractor {
    var presenter: IHomePresenter? { get set }
}

class HomeInteractor: IHomeInteractor {
    var presenter: IHomePresenter?
    
}
