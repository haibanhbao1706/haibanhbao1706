//
//  FirstViewController.swift
//  hocLaiGiaoDien
//
//  Created by MACBOOK PRO  on 08/10/2022.
//

import UIKit

class FirstViewController: UIViewController {
    let containerView : UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    let greenView : UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "email"
        textField.textColor = .white
        textField.backgroundColor = .darkGray
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "password"
        textField.textColor = .white
        textField.backgroundColor = .darkGray
        textField.isSecureTextEntry = true
        return textField
        
    }()
    
    let bottomTextView: UIView = {
        let textView = UITextView()
        textView.backgroundColor = .purple
        textView.textColor = .white
        return textView
    }()
    let titleLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center 
        label.textColor = .white
        label.text = "Tit Label"
        return label
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
setupUI()
        
    }
    func setupUI(){
        view.addSubview(containerView)
        containerView.frame = view.bounds
        
        containerView.addSubview(greenView)
        greenView.frame = CGRect(x: 0, y: 0, width: containerView.frame.width, height: containerView.frame.size.height * 1/5)
        
        greenView.addSubview(titleLabel)
        titleLabel.frame = .init(x: 0, y: 0, width: 200, height: 50)
        titleLabel.center = greenView.center
        
        containerView.addSubview(blueView)
        blueView.frame = CGRect(x: 0, y: greenView.frame.maxY, width: greenView.bounds.width, height: greenView.frame.height)
        
        containerView.addSubview(bottomTextView)
        bottomTextView.frame = .init(x: 0, y: containerView.frame.maxY-greenView.bounds.height, width: containerView.frame.width, height: greenView.bounds.height)
    }
    

}
