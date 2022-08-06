//
//  Product.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/08/04.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import Foundation

struct Product: Decodable {
  let id: Int
  let title: String
  let description: String
  let price: Int
  let discountPercentage: Double
  let rating: Double
  let stock: Int
  let brand: String
  let category: String
  let thumbnail: String
  let images: [String]
}
