// MainViewRouter.swift
// Copyright © RoadMap. All rights reserved.

import Foundation
import UIKit

/// MainViewRouter - тут роутер создает UI элемент в идеале не должен быть, лучше создать фабрику; и то алерт не
/// заработал
final class MainViewRouter {
    weak var view: UIViewController?

    func showOkAlert() {
        let alertController = UIAlertController(title: "Hi", message: nil, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okButton)

        view?.present(alertController, animated: true)
    }
}
