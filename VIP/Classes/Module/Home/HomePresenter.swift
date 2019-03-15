import UIKit

protocol IHomePresenter {
    var displayLogic: IHomeDisplayLogic? { get set }
}

class HomePresenter: IHomePresenter {
    
    weak var displayLogic: IHomeDisplayLogic? {
        didSet {
            displayLogic?.displayColor(color: UIColor.green)
        }
    }
}
