//
//  SigningViewController.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/07/21.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import UIKit
import Alamofire

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
    let auth = User.Auth(username: "kminchelle",
                         password: "0lelplR")
    let route = HttpRouter.Auth.login(auth: auth)

    HttpClient.request(route).responseDecodable(of: User.self) { response in
      debugPrint(response)

      guard let user = response.value else { return }
      User.signed = user
      SceneDelegate.root.contentType = .main
    }
  }
}
