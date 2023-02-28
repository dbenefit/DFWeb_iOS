//
//  DFResource.swift
//  DFWebDemo
//
//  Created by qianduan-lianggq on 2023/3/1.
//

import UIKit

class DFResource: NSObject {
    ///资源bundle
    @objc private static var resourceBundle: Bundle? = nil
    
    /// 返回图片资源
    /// - Parameter name:   名称
    /// - Returns:          return image?
    @objc dynamic public class func imageName(_ name: String) -> UIImage? {
        if let podBundle = self.getPodBundle() {
            let image = UIImage(named: name, in: podBundle, compatibleWith: nil)
            return image
        }else {
            return UIImage(named: name)
        }
    }
    
    /// 获取bundle文件
    /// - Returns:
    @objc dynamic private class func getPodBundle() -> Bundle? {
        if let bundle = self.resourceBundle {
            //已获取
            return bundle
        }
        let mainBundle = Bundle.main
        //DFWeb.podspec配置项 不可乱写
        let dfPodName = "DFWeb"
        let dfResourceName = "DFResources"
        var dfResoureBundle: Bundle?
        if let dfResourceURL = mainBundle.url(forResource: dfResourceName, withExtension: "bundle") {
            //use_modular_headers!
            dfResoureBundle = Bundle(url: dfResourceURL)
        }else {
            //use_frameworks!
            if let podFrameworksURL = Bundle.main.url(forResource: "Frameworks", withExtension: nil)
                {
                let dfPodURL = podFrameworksURL.appendingPathComponent(dfPodName).appendingPathExtension("framework")
                let dfResourceURL = dfPodURL.appendingPathComponent(dfResourceName).appendingPathExtension("bundle")
                dfResoureBundle = Bundle(url: dfResourceURL)
            }
        }
        self.resourceBundle = dfResoureBundle
        return dfResoureBundle
    }
    
}
