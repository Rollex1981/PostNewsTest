//
//  ViewController.swift
//  ApiNewsTest1604
//
//  Created by admin on 16.04.2022.
//

import UIKit

class PostListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkService().getPostList { postDetails in
            print(postDetails)
        }
       
    }


}

