//
//  ViewController.swift
//  mvvmExample
//
//  Created by Faizan Ali  on 2021/11/28.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userTableView: UITableView!
    
    private var userViewModel : UsersViewModel!
    
    private var dataSource : UserTableViewDataSource<UserTableViewCell,UserData>!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate(){
        
        self.userViewModel =  UsersViewModel()
        self.userViewModel.bindUserViewModelToController = {
            self.updateDataSource()
        }
    }
    
    func updateDataSource(){
        
        self.dataSource = UserTableViewDataSource(cellIdentifier: "UserTableViewCell", items: self.userViewModel.userData, configureCell: { (cell, evm) in
            cell.userIdLabel.text = String(evm.id)
            cell.userTitleLabel.text = evm.title
        })
        
        DispatchQueue.main.async {
            self.userTableView.dataSource = self.dataSource
            self.userTableView.reloadData()
        }
    }
    
}

