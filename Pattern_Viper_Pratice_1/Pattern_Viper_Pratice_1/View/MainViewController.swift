// MainViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// MainViewController  - основной контроллер; ничего сверхъестественного нету просо, главное понять как работает вайреп
final class MainViewController: UIViewController, MainViewInput {
    var output: MainViewOutput?

    // MARK: Visual Componts

    private lazy var numbersLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.textColor = .systemMint
        label.text = "Viper"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var showButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show numbers", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(didPressedShow), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button

    }()

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupUI()
    }

    // MARK: - Input

    func showFormattedString(_ string: String) {
        numbersLabel.text = string
    }

    // MARK: Private Methods

    private func setupUI() {
        view.addSubview(numbersLabel)
        view.addSubview(showButton)

        NSLayoutConstraint.activate([
            numbersLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            numbersLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            showButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            showButton.topAnchor.constraint(equalTo: numbersLabel.bottomAnchor, constant: 20),
            showButton.heightAnchor.constraint(equalToConstant: 40),
            showButton.widthAnchor.constraint(equalToConstant: 150)
        ])
    }

    // MARK: - Actions

    @objc private func didPressedShow() {
        output?.didPressedShow()
    }
}
