//
//  ProfileViewController.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/07/23.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import UIKit

class ProfileViewController: UITableViewController {

  @IBOutlet weak var signOutButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()

  }
}

extension ProfileViewController {
  @IBAction func didTapSignOut(_ sender: Any) {
    SceneDelegate.root.contentType = .signing
  }
}
