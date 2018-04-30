//
//  ProfileView.swift
//  Verbage
//
//  Created by C4Q on 4/28/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    let newPurple = HexStringToUIColor.convert(hex: "#555abe", alpha: 0.85)
    
    let font = "AvenirNext-Regular"
    
    lazy var headerBackground: UIImageView = {
        let header = UIImageView()
        header.image = #imageLiteral(resourceName: "Midnight Bloom")
        header.contentMode = .scaleAspectFill
        header.clipsToBounds = true
        return header
    }()
    
    lazy var headerView: UIView = {
        let header = UIView()
        header.layer.opacity = 0.05
        header.backgroundColor = .white
        return header
    }()
    
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Verbage"
        label.font = UIFont(name: "Zapfino", size: 18)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    lazy var sideMenuButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "side menu open"), for: .normal)
        button.layer.opacity = 1
        return button
    }()
    
    lazy var editButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "menu"), for: .normal)
        button.layer.opacity = 1
        button.backgroundColor = .clear
        return button
    }()
    
    lazy var profileContainer: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var profilePhoto: UIImageView = {
        let photo = UIImageView()
        photo.image = #imageLiteral(resourceName: "vikash")
        photo.contentMode = .scaleAspectFill
        photo.layer.masksToBounds = true
        return photo
    }()
    
    lazy var profileGradientLayer: UIImageView = {
        let photo = UIImageView()
        photo.image = #imageLiteral(resourceName: "Midnight Bloom")
        photo.layer.opacity = 0.65
        photo.contentMode = .scaleAspectFill
        return photo
    }()
    
//    lazy var editProfileButton: UIButton = {
//        let button = UIButton()
//        button.setImage(#imageLiteral(resourceName: "edit profile"), for: .normal)
//        button.layer.backgroundColor = UIColor.clear.cgColor
//        return button
//    }()
    
    lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Vikash"
        label.font = UIFont(name: font, size: 30)
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .clear
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    lazy var segmentedController: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["My Works", "Favorites"])
        let fontStyle = UIFont.systemFont(ofSize: 18)
        sc.setTitleTextAttributes([NSAttributedStringKey.font: fontStyle],
                                        for: .normal)
        sc.selectedSegmentIndex = 0
        sc.backgroundColor = newPurple
        sc.tintColor = .white
        return sc
    }()
    
    let postCell = "Post Cell"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(PostCell.self, forCellReuseIdentifier: postCell)
        tableView.backgroundColor = .white
        return tableView
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .black
        setupViews()
    }
    
    private func setupViews() {
        setupHeaderBackground()
        setupHeaderView()
        setupHeaderLabel()
        setupSideMenuButton()
        setupEditButton()
        setupProfileContainer()
        setupProfilePhoto()
        setupProfileGradientLayer()
        setupUsernameLabel()
//        setupEditProfileButton()
        setupSegmentedController()
        setupTableView()
    }
    
    private func setupHeaderBackground() {
        addSubview(headerBackground)
        headerBackground.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerBackground.topAnchor.constraint(equalTo: topAnchor),
            headerBackground.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            headerBackground.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            headerBackground.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.11),
            headerBackground.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor)
            ])
    }
    
    private func setupHeaderView() {
        addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: headerBackground.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: headerBackground.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: headerBackground.trailingAnchor),
            headerView.bottomAnchor.constraint(equalTo: headerBackground.bottomAnchor),
            headerView.centerXAnchor.constraint(equalTo: headerBackground.centerXAnchor)
            ])
    }
    
    private func setupHeaderLabel() {
        addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerLabel.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.6),
            headerLabel.centerXAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerXAnchor),
            headerLabel.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor)
            ])
    }
    
    private func setupSideMenuButton() {
        addSubview(sideMenuButton)
        sideMenuButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sideMenuButton.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 10),
            sideMenuButton.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor),
            sideMenuButton.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.45),
            sideMenuButton.widthAnchor.constraint(equalTo: sideMenuButton.heightAnchor, multiplier: 1)
            ])
    }
    
    private func setupEditButton() {
        addSubview(editButton)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editButton.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -10),
            editButton.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor),
            editButton.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.45),
            editButton.widthAnchor.constraint(equalTo: editButton.heightAnchor, multiplier: 1)
            ])
    }
    
    private func setupProfileContainer() {
        addSubview(profileContainer)
        profileContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileContainer.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            profileContainer.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1),
            profileContainer.heightAnchor.constraint(equalTo: profileContainer.widthAnchor, multiplier: 1),
            profileContainer.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
    
    private func setupProfilePhoto() {
        addSubview(profilePhoto)
        profilePhoto.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profilePhoto.topAnchor.constraint(equalTo: profileContainer.topAnchor),
            profilePhoto.leadingAnchor.constraint(equalTo: profileContainer.leadingAnchor),
            profilePhoto.trailingAnchor.constraint(equalTo: profileContainer.trailingAnchor),
            profilePhoto.bottomAnchor.constraint(equalTo: profileContainer.bottomAnchor),
            profilePhoto.centerXAnchor.constraint(equalTo: profileContainer.centerXAnchor)
            ])
    }

    private func setupProfileGradientLayer() {
        addSubview(profileGradientLayer)
        profileGradientLayer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileGradientLayer.topAnchor.constraint(equalTo: profilePhoto.topAnchor),
            profileGradientLayer.leadingAnchor.constraint(equalTo: profilePhoto.leadingAnchor),
            profileGradientLayer.trailingAnchor.constraint(equalTo: profilePhoto.trailingAnchor),
            profileGradientLayer.bottomAnchor.constraint(equalTo: profilePhoto.bottomAnchor),
            profileGradientLayer.centerXAnchor.constraint(equalTo: profilePhoto.centerXAnchor)
            ])
    }
    
    private func setupUsernameLabel() {
        addSubview(usernameLabel)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
//            usernameLabel.leadingAnchor.constraint(equalTo: profileGradientLayer.leadingAnchor, constant: 10),
//            usernameLabel.trailingAnchor.constraint(equalTo: profileGradientLayer.trailingAnchor, constant: -10),
//            usernameLabel.widthAnchor.constraint(equalTo: profileGradientLayer.widthAnchor, multiplier: 1),
            usernameLabel.bottomAnchor.constraint(equalTo: profileGradientLayer.bottomAnchor, constant: -16),
            usernameLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
    
//    private func setupEditProfileButton() {
//        addSubview(editProfileButton)
//        editProfileButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            editProfileButton.trailingAnchor.constraint(equalTo: profileGradientLayer.trailingAnchor, constant: -10),
//            editProfileButton.widthAnchor.constraint(equalTo: profileGradientLayer.widthAnchor, multiplier: 0.09),
//            editProfileButton.heightAnchor.constraint(equalTo: editProfileButton.widthAnchor, multiplier: 1),
//            editProfileButton.bottomAnchor.constraint(equalTo: usernameLabel.topAnchor, constant: -10)
//            ])
//    }
    
    private func setupSegmentedController() {
        addSubview(segmentedController)
        segmentedController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segmentedController.topAnchor.constraint(equalTo: profileContainer.bottomAnchor),
            segmentedController.widthAnchor.constraint(equalTo: widthAnchor),
            segmentedController.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }

    private func setupTableView() {
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: segmentedController.bottomAnchor),
            tableView.widthAnchor.constraint(equalTo: widthAnchor),
            tableView.centerXAnchor.constraint(equalTo: centerXAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            ])
    }
    
}

