//
//  HomeDatasource+navbar.swift
//  Twitter
//
//  Created by Daniel Oliveira on 8/3/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

import UIKit

extension HomeDatasourceController {
    
    func setupNavigationBarItems() {
        setupCenterNavItems()
        setupLeftNavItems()
        setupRightNavItems()
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        //remove default navbar line
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        //setup a new navbar separator line
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navBarSeparatorView)
        navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
    
    private func setupCenterNavItems() {
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "ic_logo").withRenderingMode(.alwaysTemplate))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        titleImageView.contentMode = .scaleAspectFit
        titleImageView.tintColor = twitterBlue
        navigationItem.titleView = titleImageView
    }
    
    private func setupLeftNavItems() {
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "ic_followButton").withRenderingMode(.alwaysTemplate), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        followButton.contentMode = .scaleAspectFit
        followButton.tintColor = twitterBlue
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    private func setupRightNavItems() {
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "ic_search").withRenderingMode(.alwaysTemplate), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        searchButton.contentMode = .scaleAspectFit
        searchButton.tintColor = twitterBlue
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "ic_write").withRenderingMode(.alwaysTemplate), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 38, height: 38)
        composeButton.contentMode = .scaleAspectFit
        composeButton.tintColor = twitterBlue
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
    }
}
