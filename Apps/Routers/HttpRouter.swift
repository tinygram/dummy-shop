//
//  HttpRouter.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/08/04.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import Foundation
import Alamofire

enum HttpRouter {
  static let host = "https://dummyjson.com"
}

extension HttpRoutable {
  var host: String {
    return HttpRouter.host
  }

  var method: HTTPMethod {
    return .get
  }

  var headers: HTTPHeaders? {
    return nil
  }

  var parameters: Parameters? {
    return nil
  }

  var encoder: ParameterEncoder {
    return URLEncodedFormParameterEncoder.default
  }
}
