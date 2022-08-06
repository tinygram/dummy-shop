//
//  ProfileViewController.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/07/23.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import UIKit

class ProfileViewController: UITableViewController {

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var emailLabel: UILabel!
  @IBOutlet weak var signOutButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()

    configureFields()
  }
}

extension ProfileViewController {
  func configureFields() {
    guard let user = User.signed else { return }
    nameLabel.text = user.username
    emailLabel.text = user.email
  }
}

extension ProfileViewController {
  @IBAction func didTapSignOut(_ sender: Any) {
    User.signed = nil
    SceneDelegate.root.contentType = .signing
  }
}
