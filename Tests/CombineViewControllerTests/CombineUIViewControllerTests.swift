#if os(iOS)
import UIKit
import XCTest
import Combine

@testable import CombineViewController

final class CombineUIViewControllerTests: XCTestCase {
    private var cancellables: Set<AnyCancellable> = []
    
    override func setUp() {
        super.setUp()
        cancellables = []
    }
    
    func testViewDidLoad() {
        let viewController = UIViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewDidLoad")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewDidLoad()
        }
        
        viewController
            .viewDidLoadPublisher
            .map { true }
            .sink { didLoad in
                result = didLoad
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, true)
    }
    
    func testViewWillAppear() {
        let viewController = UIViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewWillAppear")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewWillAppear(true)
        }
        
        viewController
            .viewWillAppearPublisher
            .map { _ in true }
            .sink { willAppear in
                result = willAppear
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, true)
    }
    
    func testViewWillDisappear() {
        let viewController = UIViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewWillDisappear")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewWillDisappear(true)
        }
        
        viewController
            .viewWillDisappearPublisher
            .map { _ in true }
            .sink { willDisappear in
                result = willDisappear
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, true)
    }
    
    func testViewDidAppear() {
        let viewController = UIViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewDidAppear")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewDidAppear(true)
        }
        
        viewController
            .viewDidAppearPublisher
            .map { _ in true }
            .sink { didAppear in
                result = didAppear
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, true)
    }
    
    func testViewDidDisappear() {
        let viewController = UIViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewDidDisappear")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewDidDisappear(true)
        }
        
        viewController
            .viewDidDisappearPublisher
            .map { _ in true }
            .sink { didDisappear in
                result = didDisappear
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, true)
    }
    
    func testViewDidLayoutSubviews() {
        let viewController = UIViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewDidLayoutSubviews")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewDidLayoutSubviews()
        }
        
        viewController
            .viewDidLayoutSubviewsPublisher
            .map { true }
            .sink { didLayout in
                result = didLayout
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, true)
    }
    
    func testViewWillLayoutSubviews() {
        let viewController = UIViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewWillLayoutSubviews")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewWillLayoutSubviews()
        }
        
        viewController
            .viewWillLayoutSubviewsPublisher
            .map { true }
            .sink { willLayout in
                result = willLayout
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, true)
    }
    
    func testWillMoveToParent() {
        let viewController = UIViewController()
        var result: UIViewController?
        let expectation = expectation(description: "Awaiting willMoveToParent")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let parentViewController = UIViewController()
            viewController.willMove(toParent: parentViewController)
        }
        
        viewController
            .willMoveToParentPublisher
            .sink { parent in
                result = parent
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
    }
    
    func testDidMoveToParent() {
        let viewController = UIViewController()
        var result: UIViewController?
        let expectation = expectation(description: "Awaiting didMoveToParent")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let parentViewController = UIViewController()
            viewController.didMove(toParent: parentViewController)
        }
        
        viewController
            .didMoveToParentPublisher
            .sink { parent in
                result = parent
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
    }
    
    func testDidReceiveMemoryWarningPublisher() {
        let viewController = UIViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting didReceiveMemoryWarning")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.didReceiveMemoryWarning()
        }
        
        viewController
            .didReceiveMemoryWarningPublisher
            .map { true }
            .sink { willLayout in
                result = willLayout
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, true)
    }
}
#endif
