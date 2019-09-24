//
//  HomeVC.swift
//  GraphQLApolloSwift
//
//  Created by 柯南 on 2019/9/23.
//  Copyright © 2019 柯南. All rights reserved.
//

import Foundation

import Alamofire

import Apollo

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        
        print("Hello welcome to Xcode11")
    
        let graphQLEndPoint = "www.saf.com/graphql"
        let apollo = ApolloClient(url: URL(string: graphQLEndPoint)!)
        let queryString = "query"
 
        
    }
    
        
        

         
}

