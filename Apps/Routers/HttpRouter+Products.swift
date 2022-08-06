//
//  HttpRouter+Products.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/08/04.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import Foundation
import Alamofire

extension HttpRouter {
  enum Products {
    case products
    case product(id: Int)
  }
}

extension HttpRouter.Products {
  private var endpoint: String { return "products" }
}

extension HttpRouter.Products: HttpRoutable {
  var path: String {
    switch self {
    case .products:
      return "/\(endpoint)"
    case let .product(id):
      return "/\(endpoint)/\(id)"
    }
  }

  var method: HTTPMethod {
    return .get
  }

  var parameters: Parameters? {
    return nil
  }

  var encoder: ParameterEncoder {
    return URLEncodedFormParameterEncoder.default
  }
}
