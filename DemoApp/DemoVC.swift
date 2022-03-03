import UIKit
import MixedFrameworkObjc

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

    let t = TestClass()
    t.print()

    view.addSubview(helloLabel)
    NSLayoutConstraint.activate([
      helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
  }
}