//
//  LoginCoordinator.swift
//  Budi
//
//  Created by ITlearning on 2021/11/02.
//

import UIKit

final class LoginCoordinator: NavigationCoordinator {

    weak var navigationController: UINavigationController?
    private let storyboard = UIStoryboard(name: "Main", bundle: nil)
    private var childCoordinators: [NavigationCoordinator] = []

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {

        let signupNormalViewController = UINavigationController()
        let locationSearchViewController = UINavigationController()
        let positionViewController = UINavigationController()
        let historyManagementViewContoller = UINavigationController()

        childCoordinators = [
            LoginCoordinator(navigationController: signupNormalViewController),
            LoginCoordinator(navigationController: locationSearchViewController),
            LoginCoordinator(navigationController: positionViewController),
            LoginCoordinator(navigationController: historyManagementViewContoller)
        ]

        let viewController: LoginSelectViewController = storyboard.instantiateViewController(
            identifier: LoginSelectViewController.identifier)
        viewController.coordinator = self
        navigationController?.pushViewController(viewController, animated: true)
    }

}

extension LoginCoordinator {
    func showLoginWithNaver() {
        let viewController: SignupNormalViewController = storyboard.instantiateViewController(identifier: SignupNormalViewController.identifier)
        viewController.navigationItem.title = "회원가입"
        navigationController?.pushViewController(viewController, animated: true)
    }

    func showHistoryManagementView() {
        guard let viewController: HistoryManagementViewController = self.storyboard.instantiateViewController(
            identifier: HistoryManagementViewController.identifier) as? HistoryManagementViewController else { return }
        viewController.navigationItem.title = "회원가입"
        navigationController?.pushViewController(viewController, animated: true)
    }

    func showLocationSearchViewController() {
        let viewController: LocationSearchViewController = storyboard.instantiateViewController(identifier: LocationSearchViewController.identifier)
        navigationController?.pushViewController(viewController, animated: true)
    }

    func showConfigurePosition() {
        guard let configure: PositionViewController = storyboard.instantiateViewController(identifier: PositionViewController.identifier) as? PositionViewController else { return }

        navigationController?.pushViewController(configure, animated: true)
    }
}
