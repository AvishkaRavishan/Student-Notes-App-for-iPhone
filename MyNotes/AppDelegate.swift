//
//  AppDelegate.swift
//  StudentNotes
//
//  Created by Ravishan S.A.A.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        CoreDataManager.shared.load()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        //  This method is called when a new scene session is being created. 
	//  It provides an opportunity to select a configuration for the new scene to ensure it is set up correctly.

        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        //  This method is called when the user discards a scene session. 
	//  Any resources that were specific to the discarded scenes can be released here, as they will not be returning. If any sessions were discarded while the application was not running, this method will be called shortly after application:didFinishLaunchingWithOptions.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        saveAllChanges()
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        saveAllChanges()
    }

    private func saveAllChanges() {
        //Need to implement code to save any changes made
        
    }
}

