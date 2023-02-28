//
//  ViewController.swift
//  DFWebPodDemo
//
//  Created by qianduan-lianggq on 2023/3/1.
//

import UIKit
import DFWeb

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let rightBar = UIBarButtonItem(title: "demo演示",
                                       style: .plain,
                                       target: self,
                                       action: #selector(goDemoWebPage))
        self.navigationItem.rightBarButtonItem = rightBar
    }


    @objc dynamic private func goDemoWebPage(){
        DFManager.shareSingleton().openWebPage(self,
                                               url: "https://aaronlianggq.github.io/web_sdk_demo.html",
                                               params: ["webTitle": "东福WebSDK演示"])
    }

}

