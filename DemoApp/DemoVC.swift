//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//

import UIKit

class DemoVC: UIViewController {
  private let helloLabel: UILabel = {
    let label = UILabel()
    label.text = "Hello, World!"
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 24)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(helloLabel)
    NSLayoutConstraint.activate([
      helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
  }
}