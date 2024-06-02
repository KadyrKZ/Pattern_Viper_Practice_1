// SceneDelegate.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// MainScene - основная сцена; может быть ошибка где связано с рутконтроллером; потом надо исправить
final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        makeWindow(with: scene)
    }

    private func makeWindow(with scene: UIScene) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)

        window?.rootViewController = MainAssembly.configureAssembly()
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
}
