#if os(macOS)
import AppKit
import XCTest
import Combine

@testable import CombineViewController

final class CombineNSViewControllerTests: XCTestCase {
    private var cancellables: Set<AnyCancellable> = []
    
    override func setUp() {
        super.setUp()
        cancellables = []
    }
    
    func testViewDidLoad() {
        let viewController = NSViewController()
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
        let viewController = NSViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewWillAppear")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewWillAppear()
        }
        
        viewController
            .viewWillAppearPublisher
            .map { true }
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
        let viewController = NSViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewWillDisappear")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewWillDisappear()
        }
        
        viewController
            .viewWillDisappearPublisher
            .map { true }
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
        let viewController = NSViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewDidAppear")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewDidAppear()
        }
        
        viewController
            .viewDidAppearPublisher
            .map { true }
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
        let viewController = NSViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewDidDisappear")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewDidDisappear()
        }
        
        viewController
            .viewDidDisappearPublisher
            .map { true }
            .sink { didDisappear in
                result = didDisappear
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5)
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, true)
    }
    
    func testViewDidLayout() {
        let viewController = NSViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewDidLayout")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewDidLayout()
        }
        
        viewController
            .viewDidLayoutPublisher
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
    
    func testViewWillLayout() {
        let viewController = NSViewController()
        var result: Bool?
        let expectation = expectation(description: "Awaiting viewWillLayout")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            viewController.viewWillLayout()
        }
        
        viewController
            .viewWillLayoutPublisher
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
