//
//  AppDelegate.swift
//  AppDelegate_SceneDelegate_Method_Test
//
//  Created by Minhyun Cho on 2021/09/05.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // UIResponder: 앱에서 발생하는 이벤트들을 담고 있는 추상형 인터페이스 객체로 View와 사용자의 이벤트간의 연결을 관리하는 역할임.
    // UIApplicationDelegate: UIApplication 객체의 작업에 개발자가 접근할 수 있도록 하는 메서드를 담고 있음.

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        NSLog("applicationDidBecomeActive : 앱이 Active 상태가 되었습니다.")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        NSLog("applicationWillResignActive : 앱이 Active 상태를 포기하고 InActive 상태가 되었습니다.")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        NSLog("applicationDidEnterBackground : 앱이 Background 상태가 되었습니다.")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        NSLog("applicationWillEnterForeground : 앱이 Foreground 상태가 되었습니다.")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        NSLog("applicationWillTerminate : 앱이 곧 종료됩니다.")
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "AppDelegate_SceneDelegate_Method_Test")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

