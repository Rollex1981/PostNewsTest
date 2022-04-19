//
//  PostListViewCell.swift
//  ApiNewsTest1604
//
//  Created by admin on 17.04.2022.
//

import UIKit


final class PostListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var readAllButton: UIButton!
    
    
    
    func configureCell(post: PostDetails?) {
        guard let post = post else { return }
        titleLabel.text = post.preview_text
        
    }
    @IBAction func readAllButtonAction(_ sender: UIButton) {
    }
}
