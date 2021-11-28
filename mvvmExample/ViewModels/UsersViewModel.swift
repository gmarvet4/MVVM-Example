//
//  UsersViewModel.swift
//  mvvmExample
//
//  Created by Faizan Ali  on 2021/11/29.
//

import Foundation

class UsersViewModel : NSObject {
    
    private var networkService : NetworkService!
    private(set) var userData : Users! {
        didSet {
            self.bindUserViewModelToController()
        }
    }
    
    var bindUserViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.networkService =  NetworkService()
        callFuncToGetUserData()
    }
    
    func callFuncToGetUserData() {
        self.networkService.serviceToGetUserData { (userData) in
            self.userData = userData
        }
    }
}

