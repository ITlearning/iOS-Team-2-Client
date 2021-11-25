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

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController: LoginSelectViewController = storyboard.instantiateViewController(
            identifier: LoginSelectViewController.identifier)
        viewController.coordinator = self
        navigationController?.pushViewController(viewController, animated: true)
    }

}

extension LoginCoordinator {
    func showSignupNormalViewController() {
        let viewController: SignupNormalViewController = storyboard.instantiateViewController(identifier: SignupNormalViewController.identifier)
        viewController.navigationItem.title = "회원가입"
        viewController.coordinator = self
        navigationController?.pushViewController(viewController, animated: true)
    }

    func showHistoryManagementViewController() {
        let viewController: HistoryManagementViewController = storyboard.instantiateViewController(
            identifier: HistoryManagementViewController.identifier)
        viewController.navigationItem.title = "회원가입"
        viewController.coordinator = self
        navigationController?.pushViewController(viewController, animated: true)
    }

    func showLocationSearchViewController() {
        let viewController: LocationSearchViewController = storyboard.instantiateViewController(identifier: LocationSearchViewController.identifier)
        viewController.navigationItem.title = "위치선택"
        viewController.coordinator = self
        navigationController?.pushViewController(viewController, animated: true)
    }

    func showPositionViewController() {
        let viewController: PositionViewController = storyboard.instantiateViewController(identifier: PositionViewController.identifier)
        viewController.navigationItem.title = "회원가입"
        viewController.coordinator = self
        navigationController?.pushViewController(viewController, animated: true)
    }

    func showHistoryWriteViewController() {
        let viewController: HistoryWriteViewController = storyboard.instantiateViewController(identifier: HistoryWriteViewController.identifier)
        viewController.navigationItem.title = "경력작성"
        viewController.coordinator = self
        navigationController?.pushViewController(viewController, animated: true)
    }
}
