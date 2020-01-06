//
//  PostsTableViewCell.swift
//  AHSuperNetwork_Example
//
//  Created by Ahmed Sultan on 1/7/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class PostsTableViewCell: UITableViewCell {
    // outlets
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    
    // props
    var postsTableViewCellViewModel: PostsTableViewCellViewModel! {
        didSet {
            self.title.text = postsTableViewCellViewModel.title
            self.subTitle.text = postsTableViewCellViewModel.subTitle
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
struct PostsTableViewCellViewModel {
    var title: String
    var subTitle: String
    init(postModel: PostModel) {
        self.title = postModel.title
        self.subTitle = postModel.body
    }
}
