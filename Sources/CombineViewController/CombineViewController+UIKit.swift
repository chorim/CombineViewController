#if canImport(CombineInterception) && os(iOS)
import UIKit
import Combine
import CombineInterception

public extension UIViewController {
    var viewDidLoadPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(UIViewController.viewDidLoad)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
    
    var viewWillAppearPublisher: AnyPublisher<Bool, Never> {
        let selector = #selector(UIViewController.viewWillAppear(_:))
        return intercept(selector)
            .map { $0.first as? Bool ?? false }
            .eraseToAnyPublisher()
    }
    
    var viewWillDisappearPublisher: AnyPublisher<Bool, Never> {
        let selector = #selector(UIViewController.viewWillDisappear(_:))
        return intercept(selector)
            .map { $0.first as? Bool ?? false }
            .eraseToAnyPublisher()
    }
    
    var viewDidAppearPublisher: AnyPublisher<Bool, Never> {
        let selector = #selector(UIViewController.viewDidAppear(_:))
        return intercept(selector)
            .map { $0.first as? Bool ?? false }
            .eraseToAnyPublisher()
    }
    
    var viewDidDisappearPublisher: AnyPublisher<Bool, Never> {
        let selector = #selector(UIViewController.viewDidDisappear(_:))
        return intercept(selector)
            .map { $0.first as? Bool ?? false }
            .eraseToAnyPublisher()
    }
    
    var viewWillLayoutSubviewsPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(UIViewController.viewWillLayoutSubviews)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
    
    var viewDidLayoutSubviewsPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(UIViewController.viewDidLayoutSubviews)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
    
    var willMoveToParentPublisher: AnyPublisher<UIViewController?, Never> {
        let selector = #selector(UIViewController.willMove(toParent:))
        return intercept(selector)
            .map { $0.first as? UIViewController }
            .eraseToAnyPublisher()
    }
    
    var didMoveToParentPublisher: AnyPublisher<UIViewController?, Never> {
        let selector = #selector(UIViewController.didMove(toParent:))
        return intercept(selector)
            .map { $0.first as? UIViewController }
            .eraseToAnyPublisher()
    }

    var didReceiveMemoryWarningPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(UIViewController.didReceiveMemoryWarning)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
}
#endif
