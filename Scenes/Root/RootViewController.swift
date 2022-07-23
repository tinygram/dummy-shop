//
//  RootViewController.swift
//  DummyShop
//
//  Created by Kang Byeonghak on 2022/07/21.
//  Copyright © 2022 Tinygram. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

  @IBOutlet weak var contentView: UIView!

  enum ContentType {
    case splash
    case onboarding
    case signing
    case main
  }

  var contentType: ContentType! {
    didSet {
      transition(to: contentType)
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    contentType = .splash

    DispatchQueue.main.asyncAfter(deadline: .now() + .delay) { [weak self] in
      guard let self = self else { return }
      self.contentType = .onboarding
    }
  }
}

extension RootViewController {
  private func transition(to content: ContentType) {
    guard let toVC = content.viewController else { return }
    guard let fromVC = children.first else { return }
    guard type(of: toVC) != type(of: fromVC) else { return }

    toVC.view.frame = contentView.bounds

    fromVC.willMove(toParent: nil)
    addChild(toVC)

    transition(
      from: fromVC,
      to: toVC,
      duration: .duration,
      options: [.transitionCrossDissolve, .curveEaseInOut],
      animations: nil) { _ in
      fromVC.removeFromParent()
      toVC.didMove(toParent: self)
    }
  }
}

extension RootViewController.ContentType {
  var viewController: UIViewController? {
    switch self {
    case .splash:     return SplashViewController.instance(from: .root)
    case .onboarding:   return OnboardingViewController.instance(from: .root)
    case .signing:    return SigningViewController.instance(from: .signing)
    case .main:       return MainViewController.instance(from: .main)
    }
  }
}

private extension TimeInterval {
  static let duration = 0.25
  static let delay = 3.0
}
