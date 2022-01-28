//
//  SceneDelegate.swift
//  MyAppClip
//
//  Created by Valery Shamshin on 25.01.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Получаем ссылку.
        guard let firstUserActivity = connectionOptions.userActivities.first,
              firstUserActivity.activityType == NSUserActivityTypeBrowsingWeb,
              let url = firstUserActivity.webpageURL,
              let components = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
                  return
              }
        
        // Парсим ее и вытягиваем id.
        let queryItems = components.queryItems
        let productURL = queryItems?.first { $0.name == "productId" }
        
        // Передаем данные для viewController'a, чтобы перейти сразу на детальный экран.
        if let productId = productURL?.value,
           let product = MockData.menu.filter({ $0.id == Int(productId) }).first,
            let navigationController = window?.rootViewController as? UINavigationController {
                let productViewController = ProductViewController(product: product)
                navigationController.pushViewController(productViewController, animated: true)
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActяive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }
}

