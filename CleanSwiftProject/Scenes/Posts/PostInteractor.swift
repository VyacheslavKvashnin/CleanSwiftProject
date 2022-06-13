//
//  PostInteractor.swift
//  CleanSwiftProject
//
//  Created by Вячеслав Квашнин on 13.06.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

protocol PostBusinessLogic {
    func doSomething(request: Post.Something.Request)
}

protocol PostDataStore {
    
}

class PostInteractor: PostBusinessLogic, PostDataStore {
    
    var presenter: PostPresentationLogic?
    var worker: PostWorker?
    
    func doSomething(request: Post.Something.Request) {
        worker = PostWorker()
        worker?.doSomeWork()
        
        let response = Post.Something.Response()
        presenter?.presentSomething(response: response)
    }
}