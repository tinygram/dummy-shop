//
//  UIViewController+Extension.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/07/21.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import UIKit

// MARK: - Generates instance of view controller from stroyboard

extension UIViewController {
  class func instance(from board: UIStoryboard.Name, bundle: Bundle? = nil) -> Self? {
    return instanceHelper(String(describing: self), storyboard: board.rawValue, bundle: bundle)
  }

  private class func instanceHelper<T>(_ identifier: String, storyboard: String, bundle: Bundle?) -> T? {
    return UIStoryboard(name: storyboard, bundle: bundle).instantiateViewController(withIdentifier: identifier) as? T
  }
}
