//
//  HomeController.swift
//  SideMenuProject
//
//  Created by Micah Burnside on 6/7/22.
//

import Foundation
import UIKit

class HomeController: UIViewController {
    //MARK: - Properties
    var delegate: HomeControllerDelegate?
    let hamburgerMenuIcon = UIImage(systemName: "sidebar.left")
    //MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    //MARK: - Handlers
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
        print("Toggle Menu")
    }
    
    func configureNavigationBar() {
        self.navigationController?.navigationBar.backgroundColor = .darkGray
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: hamburgerMenuIcon, style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
