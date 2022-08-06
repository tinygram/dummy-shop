//
//  User.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/08/04.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import Foundation

struct User: Decodable {
  let id: Int
  let username: String
  let email: String
  let firstName: String
  let lastName: String
  let gender: String
  let image: String
  let token: String
}

extension User {
  struct Auth: Encodable {
    let username: String
    let password: String
  }
}
