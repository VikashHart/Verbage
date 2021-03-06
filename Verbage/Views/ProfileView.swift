//
//  ProfileView.swift
//  Verbage
//
//  Created by C4Q on 4/28/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    let purple = UIColor(hexString: "4A446D")
    
    private let whiteGradient = [HexStringToUIColor.convert(hex: "#E3FDF5", alpha: 1), HexStringToUIColor.convert(hex: "#FFE6FA", alpha: 1)]
    
    private let font = "AvenirNext-Regular"
    
    lazy var headerBackground: GradientView = {
        let header = GradientView()
        header.gradientLayer?.startPoint = CGPoint(x: 0, y: 0.5)
        header.gradientLayer?.endPoint = CGPoint(x: 1, y: 0.5)
        header.gradientLayer?.colors = CGColor.verbage
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    
    lazy var headerView: UIView = {
        let header = UIView()
        header.layer.opacity = 0.05
        header.backgroundColor = .white
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Verbage"
        label.font = UIFont(name: "Zapfino", size: 18)
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var sideMenuButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "side menu open").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.layer.opacity = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var editButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "menu").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.layer.opacity = 1
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var profileContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var profilePhoto: UIImageView = {
        let photo = UIImageView()
        photo.image = #imageLiteral(resourceName: "vikash")
        photo.contentMode = .scaleAspectFill
        photo.layer.masksToBounds = true
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    
    lazy var profileGradientLayer: GradientView = {
        let gradient = GradientView()
        gradient.gradientLayer?.startPoint = CGPoint(x: 0, y: 0)
        gradient.gradientLayer?.endPoint = CGPoint(x: 1, y: 1)
        gradient.gradientLayer?.colors = CGColor.verbage
        gradient.layer.opacity = 0.65
        gradient.translatesAutoresizingMaskIntoConstraints = false
        return gradient
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
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var segmentedController: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["My Works", "Favorites"])
        let fontStyle = UIFont.systemFont(ofSize: 18)
        sc.setTitleTextAttributes([NSAttributedStringKey.font: fontStyle],
                                        for: .normal)
        sc.selectedSegmentIndex = 0
        sc.tintColor = purple
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    let postCell = "Post Cell"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(PostCell.self, forCellReuseIdentifier: postCell)
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
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
        backgroundColor = .white
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
        NSLayoutConstraint.activate([
            headerLabel.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.6),
            headerLabel.centerXAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerXAnchor),
            headerLabel.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor)
            ])
    }
    
    private func setupSideMenuButton() {
        addSubview(sideMenuButton)
        NSLayoutConstraint.activate([
            sideMenuButton.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 10),
            sideMenuButton.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor),
            sideMenuButton.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.45),
            sideMenuButton.widthAnchor.constraint(equalTo: sideMenuButton.heightAnchor, multiplier: 1)
            ])
    }
    
    private func setupEditButton() {
        addSubview(editButton)
        NSLayoutConstraint.activate([
            editButton.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -10),
            editButton.centerYAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerYAnchor),
            editButton.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.45),
            editButton.widthAnchor.constraint(equalTo: editButton.heightAnchor, multiplier: 1)
            ])
    }
    
    private func setupProfileContainer() {
        addSubview(profileContainer)
        NSLayoutConstraint.activate([
            profileContainer.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            profileContainer.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1),
            profileContainer.heightAnchor.constraint(equalTo: profileContainer.widthAnchor, multiplier: 1),
            profileContainer.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
    
    private func setupProfilePhoto() {
        addSubview(profilePhoto)
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
        NSLayoutConstraint.activate([
            segmentedController.topAnchor.constraint(equalTo: profileContainer.bottomAnchor),
            segmentedController.widthAnchor.constraint(equalTo: widthAnchor),
            segmentedController.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }

    private func setupTableView() {
        addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: segmentedController.bottomAnchor),
            tableView.widthAnchor.constraint(equalTo: widthAnchor),
            tableView.centerXAnchor.constraint(equalTo: centerXAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            ])
    }
    
}

