//
//  UINavigationController-Gesture.swift
//  Adam_20211222_SwiftUI
//
//  Created by Adam on 2021/12/28.
//

import Foundation
import UIKit
import SwiftUI

extension UINavigationController: UIGestureRecognizerDelegate, PopGestureProtocol {
    @objc public func gestureRecognizerShouldPop() {
        /// 调用view的 gestureRecognizerShouldPop方法
        
//        guard let vc = self.topViewController as? UIHostingController,
//              let view = vc.rootView else {
//                 return
//             }
//        if view.responds(to: #selector(gestureRecognizerShouldPop)) {
//            view.gestureRecognizerShouldPop()
//        }
        
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        gestureRecognizerShouldPop()
        return viewControllers.count > 1
    }
    
    
    
    func popToViewController(ofClass: AnyClass, animated: Bool = true) {
        if let vc = viewControllers.filter({$0.isKind(of: ofClass)}).last {
            popToViewController(vc, animated: animated)
        }
    }
    
    
    func popViewControllers(viewsToPop: Int, animated: Bool = true) {
        if viewControllers.count > viewsToPop {
            let vc = viewControllers[viewControllers.count - viewsToPop - 1]
            popToViewController(vc, animated: animated)
        }
    }
    
    
    func popBack<T: UIViewController>(toControllerType: T.Type) {
        if var viewControllers: [UIViewController] = self.navigationController?.viewControllers {
            viewControllers = viewControllers.reversed()
            for currentViewController in viewControllers {
                if currentViewController .isKind(of: toControllerType) {
                    self.navigationController?.popToViewController(currentViewController, animated: true)
                    break
                }
            }
        }
    }
}

public protocol PopGestureProtocol {
    func gestureRecognizerShouldPop() -> Void
    
}

