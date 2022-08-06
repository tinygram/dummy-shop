//
//  ProductCell.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/08/06.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell, ReusableView {

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }

  func configure(_ product: Product) {
    titleLabel.text = product.title
    descriptionLabel.text = product.description
  }
}
