//
//  ViewController.swift
//  demoGiaoDien
//
//  Created by MACBOOK PRO  on 05/10/2022.
//

import UIKit

class ViewController: UIViewController {
    override func loadView() {
        // load các thành phần nằm trong viewcontroller
        print("loadView")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // view đã dc load xong viewDidload chỉ đc gọi 1 laanf trong cả vòng đời viewcontroller
        print("did load")
        addNewView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // hàm gọi khi. view chuẩn bị hển thị lên màn hình
        print("will9 appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //hàm gọi khì viewcontroller hiển thị lên màn hình
        print("did appear")
        
    }
    func addNewView() {
        let blackView = UIView()
        // set vị trí và kích thuóc. cho black view
        blackView.frame = CGRect(x: 20, y: 300, width: 100, height: 150)
        blackView.backgroundColor = UIColor.black // xet màu backgroud
        view.addSubview(blackView)
    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //hàm gọi khi view controller săps bị ẩn đi
        print(" will appear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // hàm gọi khi viewcontroller đã bị ẩn đi
        print("did dissapear")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // hàm đuọc gọi sau khi quay ngang dọc màn hình
        print("did layout subview")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // hàm đc gọi khi sắp thay dôi màn hinh(quay ngang quay doc)
        print("will layout subview")
    }
    
}

