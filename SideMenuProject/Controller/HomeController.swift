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
    var isExpanded = false
    var delegate: HomeControllerDelegate?
    let hamburgerMenuIcon = UIImage(systemName: "sidebar.left")
    //MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
        setupGestureRecognizers()
    }
    
    
    private func setupGestureRecognizers() {
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeAction(swipe:)))
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(leftSwipe)
    }
    
    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        handleMenuToggle()
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
    
    
    private func animatePanel(shouldExpand: Bool) {

            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut) {
                self.view.frame.origin.x = 0
            }
        animateStatusBar()
        }
    
    private func animateStatusBar() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: self.setNeedsStatusBarAppearanceUpdate)
    }
    
}
