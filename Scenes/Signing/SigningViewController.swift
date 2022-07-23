//
//  SigningViewController.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/07/21.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import UIKit

class SigningViewController: UIViewController {

  @IBOutlet weak var usernameField: UITextField!
  @IBOutlet weak var passwordField: UITextField!
  @IBOutlet weak var signInButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()

  }
}

extension SigningViewController {
  @IBAction func didTapSignIn(_ sender: Any) {
    SceneDelegate.root.contentType = .main
  }
}
