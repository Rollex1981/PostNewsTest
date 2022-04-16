//
//  Presenter.swift
//  ApiNewsTest1604
//
//  Created by admin on 16.04.2022.
//

import Foundation



protocol PostListPresenterDelegate: AnyObject {
    func getPostList()
}

protocol PostListViewDelegate: AnyObject {
    func showPostsData(data: [PostDetails])
}

final class PostListPresenter: PostListPresenterDelegate {
    
    private weak var view: PostListViewDelegate?
    
    init(view: PostListViewDelegate) {
        self.view = view
    }
    
    func getPostList() {
    NetworkService().getPostList { data in
            self.view?.showPostsData(data: data)
        }
    }
}
