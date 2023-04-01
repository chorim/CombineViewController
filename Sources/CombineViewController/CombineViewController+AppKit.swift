#if canImport(CombineInterception) && os(macOS)
import AppKit
import Combine
import CombineInterception

public extension NSViewController {
    var viewDidLoadPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(NSViewController.viewDidLoad)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
    
    var viewWillAppearPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(NSViewController.viewWillAppear)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
    
    var viewWillDisappearPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(NSViewController.viewWillDisappear)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
    
    var viewDidAppearPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(NSViewController.viewDidAppear)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
    
    var viewDidDisappearPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(NSViewController.viewDidDisappear)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
    
    var viewWillLayoutPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(NSViewController.viewWillLayout)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
    
    var viewDidLayoutPublisher: AnyPublisher<Void, Never> {
        let selector = #selector(NSViewController.viewDidLayout)
        return publisher(for: selector)
            .eraseToAnyPublisher()
    }
}
#endif
