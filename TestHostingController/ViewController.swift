//
//  ViewController.swift
//  TestHostingController
//
//  Created by 김종권 on 2022/10/18.
//

import UIKit

class ViewController: UIViewController {
  private let button: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("버튼", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    
    button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    
    view.addSubview(button)
    NSLayoutConstraint.activate([
      button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
    ])
  }
  
  @objc private func tapButton() {
    present(MyHostingController(rootView: MySwiftUIView()), animated: true)
  }
}
