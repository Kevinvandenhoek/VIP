import UIKit

protocol IHomeRouter {
    var navigationController: UINavigationController? { get set }
}

class HomeRouter: IHomeRouter {
    var navigationController: UINavigationController?
    
}
