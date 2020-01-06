//
//  PostsViewModel.swift
//  AHSuperNetwork_Example
//
//  Created by Ahmed Sultan on 1/7/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
class PostsViewModel {
    // view model vars to be injected by any viewcontroller
    var postsUseCase: PostsUseCase = PostsUseCase()
    var updateLoadingStatus: ((Bool) -> Void)?
    var reloadTable: (() -> Void)?
    
    // view model observables
    var posts: [PostModel] = [] {
        didSet {
            self.reloadTable?()
        }
    }
    var isLoading: Bool = false {
        didSet {
            updateLoadingStatus?(isLoading)
        }
    }
    // init fetch posts
    func initFetch() {
        self.isLoading = true
        postsUseCase.fetchPosts { [weak self] (model, error) in
            guard let self = self else {return}
            self.isLoading = false
            guard let posts = model as? [PostModel] else { return }
            self.posts = posts
        }
    }
}
