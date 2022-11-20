import XCTest
@testable import TwitterPackage

final class TwitterPackageTests: XCTestCase {
    
    
    var sut : PostTweetVC!
    var clearButton : UIButton!
    var copyButton : UIButton!
    var tweetTextView : UITextView!
    
    // MARK: - Life Cycle...
    override func setUp() {
        super.setUp()
        sut = PostTweetVC()
        sut.loadViewIfNeeded()
    }
    override func tearDown(){
        super.tearDown()
        sut = nil
    }
    
    // MARK: - Test....
    func testTextView_When_ClearButtonTapped(){
        //Given
    //    clearButton.addTarget(sut,action:#selector(<#T##@objc method#>) , for: .touchUpInside)
//        let xx = sut.chatacterTypedCountLabel.text
//        sut.clearTextButton.isUserInteractionEnabled = true
//        sut.clearTweetText(Any.self)
//        let text = "0/280"
  //      XCTAssertEqual(xx, text)
    }
    
    
    
    func testTextView_When_CopyButtonTappes(){
        
    }
    
    
    
    
    
}
