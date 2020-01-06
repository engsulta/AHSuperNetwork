//
//  PostsTableViewController.swift
//  AHSuperNetwork_Example
//
//  Created by Ahmed Sultan on 1/6/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import AHSuperNetwork



class PostsTableViewController: UITableViewController {
    var postsVM: PostsViewModel = PostsViewModel()

    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initVM()
    }
    func initVM() {
        postsVM.updateLoadingStatus = { [weak self] isloading in
            if isloading {
                self?.loadingIndicator.startAnimating()
                self?.loadingIndicator.isHidden = false
            }
            else {
                self?.loadingIndicator.stopAnimating()
                self?.loadingIndicator.isHidden = true
            }
        }
        postsVM.reloadTable = { [weak self] in
            self?.tableView.reloadData()
        }
        postsVM.initFetch()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.postsVM.posts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! PostsTableViewCell
        cell.postsTableViewCellViewModel = PostsTableViewCellViewModel(postModel: postsVM.posts[indexPath.row])
        return cell
    }
}
