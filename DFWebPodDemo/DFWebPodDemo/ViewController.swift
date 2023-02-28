//
//  ViewController.swift
//  DFWebDemo
//
//  Created by qianduan-lianggq on 2023/2/28.
//

import UIKit
import DFWeb

class ViewController: UIViewController, UITextFieldDelegate {

    @objc private lazy var textField: UITextField = {
        let fd = UITextField.init()
        fd.borderStyle = .roundedRect
        fd.font = UIFont.systemFont(ofSize: 14.0, weight: .medium)
        fd.returnKeyType = .done
        fd.keyboardType = .default
        fd.autocapitalizationType = .none
        fd.tintColor = UIColor.blue
//        fd.textColor =
        fd.placeholder = "设置修改userAgent标识"
        fd.textAlignment = .left
        fd.delegate = self
        fd.backgroundColor = UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0)
        return fd
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rightBar = UIBarButtonItem(title: "demo演示",
                                       style: .plain,
                                       target: self,
                                       action: #selector(goDemoWebPage))
        self.navigationItem.rightBarButtonItem = rightBar
        
        textField.frame = CGRectMake(50, 120.0, self.view.bounds.size.width - 100.0, 36.0)
        self.view.addSubview(textField)
    }


    @objc dynamic private func goDemoWebPage(){
        DFManager.shareSingleton().openWebPage(self,
                                               url: "https://aaronlianggq.github.io/web_sdk_demo.html",
                                               params: ["webTitle": "东福WebSDK演示"])
    }
    
    //MARK: UITextFieldDelegate
    @objc dynamic func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        let text = textField.text ?? ""
        let flag = text.trimmingCharacters(in: .whitespacesAndNewlines)
        DFManager.shareSingleton().setUserAgentFlag(flag)
        return true
    }
}


