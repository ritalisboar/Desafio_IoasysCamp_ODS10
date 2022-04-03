//
//  SceneDelegate.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 29/03/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        let nav = UINavigationController(rootViewController: SplashViewController())
        
        window?.rootViewController = nav
    }

}

