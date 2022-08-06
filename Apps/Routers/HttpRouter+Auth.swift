//
//  HttpRouter+Auth.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/08/04.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import Foundation
import Alamofire

extension HttpRouter {
  enum Auth {
    case login(auth: User.Auth)
  }
}

extension HttpRouter.Auth {
  private var endpoint: String { return "auth" }
}

extension HttpRouter.Auth: HttpRoutable {
  var path: String {
    return "/\(endpoint)/login"
  }

  var method: HTTPMethod {
    return .post
  }

  var parameters: Parameters? {
    guard case let .login(auth) = self else { return nil }
    return Parameters(encodable: auth)
  }

  var encoder: ParameterEncoder {
    return JSONParameterEncoder.default
  }
}
