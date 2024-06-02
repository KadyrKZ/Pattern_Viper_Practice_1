// MainViewPresenter.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// MainViewPresenter - основной презентер
final class MainViewPresenter: MainViewOutput, MainViewInteractorOutput {
    weak var view: MainViewInput?
    var interactor: MainViewInteractorInput?
    var router: MainViewRouterInput?

    // MARK: - ViewOutput

    func didPressedShow() {
        interactor?.obtainFormattedString()
    }

    // MARK: - Interactor

    func didFinishObtainingFormattedString(_ string: String) {
        view?.showFormattedString(string)
        router?.showOkAlert()
    }
}
