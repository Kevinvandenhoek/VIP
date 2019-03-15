import UIKit

protocol ILoginPresenter {
    var displayLogic: ILoginDisplayLogic? { get set }
}

class LoginPresenter: ILoginPresenter {
    
    weak var displayLogic: ILoginDisplayLogic? {
        didSet {
            displayLogic?.displayColor(color: UIColor.green)
        }
    }
}
