//
//  HttpRoutable.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/08/04.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import Foundation
import Alamofire

protocol HttpRoutable: URLConvertible, URLRequestConvertible {
  var host: String { get }
  var method: HTTPMethod { get }
  var path: String { get }
  var headers: HTTPHeaders? { get }
  var parameters: Parameters? { get }
  var encoder: ParameterEncoder { get }
}

extension HttpRoutable {
  func asURL() throws -> URL {
    guard let url = URL(string: host)?.appendingPathComponent(path) else {
      throw AFError.invalidURL(url: host)
    }
    return url
  }
}

extension HttpRoutable {
  func asURLRequest() throws -> URLRequest {
    let url = try asURL()
    let request = try URLRequest(url: url, method: method, headers: headers)
    let encoded = try encoder.encode(parameters, into: request)

    return encoded
  }
}
