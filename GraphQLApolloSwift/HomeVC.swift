//
//  HomeVC.swift
//  GraphQLApolloSwift
//
//  Created by 柯南 on 2019/9/23.
//  Copyright © 2019 柯南. All rights reserved.
//

import Foundation


import Apollo

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
            self.view.backgroundColor = UIColor.white
            
            let apollo = ApolloClient(url: URL(string: "http://localhost:8080/graphql")!)
            
            apollo.fetch(query: UserGetInfoQuery(uid: "124" )) { (result, error) in
                guard let data = result?.data?.jsonObject
                
                else {
                    return
                    
                }
                print(data)
    //            ["user_getInfo": ["uid": "124", "username": "测试", "__typename": "UserInfo", "registerTime": "2019-09-25 13:35:32"]]

            }

            
        }
    
        
        

         
}

