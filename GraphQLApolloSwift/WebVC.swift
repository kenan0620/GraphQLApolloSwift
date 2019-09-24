//
//  WebVC.swift
//  GraphQLApolloSwift
//
//  Created by 柯南 on 2019/9/23.
//  Copyright © 2019 柯南. All rights reserved.
//

import Foundation

import WebKit
import UIKit
class WebVC: UIViewController,UINavigationControllerDelegate {
    
     var webView: WKWebView!
        
        override func loadView() {
            //创建网页加载的偏好设置
            let prefrences = WKPreferences()
            prefrences.javaScriptEnabled = false
            
            //配置网页视图
            let webConfiguration = WKWebViewConfiguration()
            webConfiguration.preferences = prefrences
            
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.navigationDelegate = self ;
            view = webView
        }
        
        override func viewDidLoad() {
            self.view.backgroundColor = UIColor.white
            
            print("Hello welcome to Xcode11")
        
            
                    
    //        let graphQLEndPoint = "www.saf.com/graphql"
    //        let apollo = ApolloClient(url: URL(string: graphQLEndPoint)!)
    //
    //        let queryString = "query"
    //
         let myURL = URL(string: "https://www.baidu.com")
               let myRequest = URLRequest(url: myURL!)
               webView.load(myRequest)
            
           
            
        }
    }

extension WebVC: WKNavigationDelegate{
    //视图开始载入的时候显示网络活动指示器
       func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("开始加载了")
    }
       
       //载入结束后，关闭网络活动指示器
       func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
           print("加载结束了")
       }
       
       //阻止链接被点击
       func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
           if navigationAction.navigationType == .linkActivated {
               decisionHandler(.cancel)
               
               let alertController = UIAlertController(title: "Action not allowed", message: "Tapping on links is not allowed. Sorry!", preferredStyle: .alert)
               alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
               present(alertController, animated: true, completion: nil)
               return
               
           }
           
           decisionHandler(.allow)
       }
}
