//
//  PostListViewController.swift
//  ApiNewsTest1604
//
//  Created by admin on 16.04.2022.
//

import UIKit

final class PostListViewController: UIViewController {
    
    
    
    @IBOutlet weak var postsTableView: UITableView!
    
    private var dataSource: [PostDetails] = []
    private var presenter: PostListPresenterDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        postsTableView.dataSource = self
        
        postsTableView.delegate = self
        
        presenter = PostListPresenter(view: self)
        
        getPostsData()
        
       
    }
    
    private func getPostsData() {
        presenter?.getPostList()
    }
}

// MARK: - PostListViewDelegate
extension PostListViewController: PostListViewDelegate {
    
    func showPostsData(data: [PostDetails]) {
        dataSource = data
        DispatchQueue.main.async {
            self.postsTableView.reloadData()
        }
    }
}

extension PostListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostListTableViewCell", for: indexPath) as! PostListTableViewCell
        cell.configureCell(post: dataSource[indexPath.row])
        return cell
    }
}
