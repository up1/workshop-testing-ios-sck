import XCTest

class demo01UITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }

    override func tearDown() {
    }

    func testExample() {
        let app = XCUIApplication()
        let myUser = app.textFields["username"]
        snapshot("Step_01")
        myUser.tap()
        myUser.typeText("somkiat")
        snapshot("Step_02")
        
        let myButton = app.buttons["my_button"]
        myButton.tap()
        myButton.tap()
        snapshot("Step_03")
        
        XCTAssertEqual("Click Me !!", myButton.label)
    }

}
