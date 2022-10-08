//
//  AppDelegate.swift
//  demoGiaoDien
//
//  Created by MACBOOK PRO  on 05/10/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
// khai báo biên window khung nhìn của ứng dụng
    // ứng dụng này sẽ huện thị trong window
var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // hàm đc họi khi ứng dụng đc hiển thj lên màn hinhf
        // tong hàm này thuòng dung để configure login (fb google firebase) cấu hingf thông baó đẩy...
        // dung để set màn hình đầu tiên khi vàò app
        configFirstViewController()
        print("app did launching")
        return true
    }
    
    func configFirstViewController() {
        //window?.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        //khởi tạo window và sewt kíchbthuocs bằng kích thước màn hình của thiét bị
        window? = UIWindow(frame: UIScreen.main.bounds)
        // dùng đẻ set FirstViewcontroller làm màn hình đầu tiên vào app
        // khởi tạo màn hình sẽ hiện đầu tiên khi vao app
        let firstViewController = FirstViewController()
        window?.rootViewController = firstViewController // set firstcontroller làm màn hình đầu tiên
        window?.makeKeyAndVisible()// hiển tghij của sổ ứng dụng
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // hàm đc gọi. khi ứng dụn sắp thoat khỏi trạng thái active
        print("app Will resign active====")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // hàm đc gọi khi ứng dụng chạy vào trạng thái ngầm
        print(" app did enter back ground!!")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // hakmf đc goi khi ứng dụng săp vào trạng thái foreground
        print(" App will enter foreground")
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
        // hàm đc gọi khi ungứ dụng đã vào tragj thai active
        print("App did in active")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // hàm đc gọi khi ứng dụng đóng hoàn toan
        print("terminated")
    }
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
    }


}

