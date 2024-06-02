// MainAssembly.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// MainAssembly - тут ошибка!!! Нужно исправить потом
class MainAssembly {
    class func configureAssembly() -> UIViewController {
        let view = MainViewController()
        let presenter = MainViewPresenter()
        let dataManager = DataManager()
        let interactor = MainViewInteractor()
        let router = MainViewRouter()

        view.output = presenter
        presenter.view = view
        presenter.router = router as? any MainViewRouterInput
        presenter.interactor = interactor

        interactor.dataManager = dataManager
        interactor.output = presenter

        router.view = view
        return view
    }
}
