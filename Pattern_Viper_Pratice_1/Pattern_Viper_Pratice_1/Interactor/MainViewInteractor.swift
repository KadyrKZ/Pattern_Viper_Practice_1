// MainViewInteractor.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// MainViewInteractor - логика ; что делать данными
final class MainViewInteractor: MainViewInteractorInput {
    weak var output: MainViewInteractorOutput?
    var dataManager: DataManager?

    func obtainFormattedString() {
        guard let numbers = dataManager?.obtainNumber() else { return }

        let numbersString = numbers.map { "\($0)" }.joined(separator: ",")
        output?.didFinishObtainingFormattedString(numbersString)
    }
}
