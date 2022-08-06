//
//  ProductViewController.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/07/23.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import UIKit

class ProductViewController: UITableViewController {

  var products: [Product] = [] {
    didSet {
      tableView.reloadData()
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    fetchProducts()
  }
}

extension ProductViewController {
  func fetchProducts() {
    let route = HttpRouter.Products.products

    HttpClient.request(route).responseDecodable(of: Product.List.self) { [weak self] response in
      debugPrint(response)
      guard let self = self else { return }
      guard let list = response.value else { return }

      self.products = list.products
    }
  }
}

// MARK: - Table view data source

extension ProductViewController {
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return products.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(for: indexPath) as ProductCell

    let product = products[indexPath.row]
    cell.configure(product)

    return cell
  }
}
