//
//  Parameters.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/08/06.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import Foundation

struct Parameters: Encodable {
  let parameters: Encodable

  init(encodable parameters: Encodable) {
    self.parameters = parameters
  }

  func encode(to encoder: Encoder) throws {
    return try parameters.encode(to: encoder)
  }
}
