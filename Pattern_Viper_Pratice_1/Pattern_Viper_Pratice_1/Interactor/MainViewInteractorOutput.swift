// MainViewInteractorOutput.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

protocol MainViewInteractorOutput: AnyObject {
    func didFinishObtainingFormattedString(_ string: String)
}
