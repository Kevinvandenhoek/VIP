import UIKit

protocol ILoginRouter {
    var navigationController: UINavigationController? { get set }
}

class LoginRouter: ILoginRouter {
    var navigationController: UINavigationController?
    
}
