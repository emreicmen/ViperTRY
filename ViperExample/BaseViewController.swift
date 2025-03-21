//
//  BaseViewController.swift
//  Videa
//
//  Created by Andaç Tercan on 07.11.2024.
//

import UIKit

class BaseViewController: UIViewController {
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    navigationController?.interactivePopGestureRecognizer?.delegate = self
    
//    if !isTabBarVisible {
//      updateTabBarHiddenStatus(true, isAnimated: true)
//    }
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

//    if isTabBarVisible {
//      updateTabBarHiddenStatus(false, isAnimated: true)
//    }
  }

  func getWindow() -> UIWindow! {
    if #available(iOS 13.0, *) {
      let keyWindow = UIApplication.shared.connectedScenes
        .map { $0 as? UIWindowScene }
        .compactMap { $0 }
        .first?.windows
        .filter { $0.isKeyWindow }.first

      return keyWindow
    }

    return (UIApplication.shared.delegate as! AppDelegate).window
  }

  func showAlertController(title: String?, message: String?, preferredStyle: UIAlertController.Style = .alert, actions: [UIAlertAction]) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
    actions.forEach { alertController.addAction($0) }

    present(alertController, animated: true)
  }

//  func showAlertView(with message: String, alertType: AlertType, in viewController: UIViewController) {
//    AlertManager.shared.show(with: message, alertType: alertType, position: .top, viewController: viewController)
//  }
//  
//  func showActionAlertView(with actionType: ActionType) {
//    let alertView = ActionAlertView().createView()
//    
//    alertView?.configure(with: actionType)
//    
//    alertView?.show(in: view)
//  }

  func openInWebView(title: String, with url: URL) {
    guard UIApplication.shared.canOpenURL(url) else { return }

//    let webViewViewController = WebViewRouter.setupModule(title: title, url: url)

//    present(webViewViewController, animated: true, completion: nil)
  }

  func updateUserInteraction(by interactionEnabled: Bool) {
    view.isUserInteractionEnabled = interactionEnabled

    navigationController?.navigationBar.isUserInteractionEnabled = interactionEnabled
    navigationController?.interactivePopGestureRecognizer?.isEnabled = interactionEnabled
  }
  
  func setBlurredNavigationBar() {
    let blurredAppearance = UINavigationBarAppearance()
    blurredAppearance.configureWithTransparentBackground()
    blurredAppearance.backgroundEffect = UIBlurEffect(style: .dark)
//    blurredAppearance.titleTextAttributes = [
//      .font: Styles.font(with: .sfProDisplay, weight: .semiBold, size: 24),
//      .foregroundColor: UIColor.white
//    ]
    
    navigationController?.navigationBar.standardAppearance = blurredAppearance
    navigationController?.navigationBar.scrollEdgeAppearance = blurredAppearance
    
    if let barButtonItem = navigationItem.leftBarButtonItem {
      if let view = barButtonItem.value(forKey: "view") as? UIView {
        view.backgroundColor = .clear
      }
    }
  }
  
  func setTransparentNavigationBar() {
    let transparentAppearance = UINavigationBarAppearance()
    transparentAppearance.configureWithTransparentBackground()
//    transparentAppearance.titleTextAttributes = [
//      .font: Styles.font(with: .sfPro, weight: .semiBold, size: 24),
//      .foregroundColor: UIColor.white
//    ]
    
    navigationController?.navigationBar.standardAppearance = transparentAppearance
    navigationController?.navigationBar.scrollEdgeAppearance = transparentAppearance
    
    if let barButtonItem = navigationItem.leftBarButtonItem {
      if let view = barButtonItem.value(forKey: "view") as? UIView {
        view.backgroundColor = .clear
      }
    }
    
    navigationItem.title = nil
  }
  
//  func updateSelectedTab(by barItemType: TabBarItemType) {
////    guard let tabBarViewController = tabBarController as? TabBarViewController else { return }
////    
////    tabBarViewController.selectedIndex = barItemType.rawValue
//  }
  
  private func updateTabBarHiddenStatus(_ isHidden: Bool, isAnimated: Bool) {
//    guard let tabBarViewController = tabBarController as? TabBarViewController else { return }
//    
//    isHidden ? tabBarViewController.hideTabBar(animated: isAnimated) : tabBarViewController.showTabBar(animated: isAnimated)
  }
}

// MARK: - UI Gesture Recognizer Delegate
extension BaseViewController: UIGestureRecognizerDelegate {
//  private var isTabBarVisible: Bool {
////      return isKind(of: HomeViewController.self) || isKind(of: TextToVideoViewController.self) || isKind(of: ProfileViewController.self)
//  }
  
  var gestureRecognizerShouldReceive: Bool {
//    guard isTabBarVisible else { return true }
    
    return false
  }
  
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    return gestureRecognizerShouldReceive
  }
}
