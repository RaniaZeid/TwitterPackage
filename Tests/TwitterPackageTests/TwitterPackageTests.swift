import XCTest
@testable import TwitterPackage

final class TwitterPackageTests: XCTestCase {
    
    
    var sut : PostTweetVC!
    
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
   // func testTextView_When_ClearButtonTapped(){
        //Given
    //    clearButton.addTarget(sut,action:#selector(<#T##@objc method#>) , for: .touchUpInside)
//        let xx = sut.chatacterTypedCountLabel.text
//        sut.clearTextButton.isUserInteractionEnabled = true
//        sut.clearTweetText(Any.self)
//        let text = "0/280"
  //      XCTAssertEqual(xx, text)
   // }
    
    
    
    func checkClearButtonWhenTextEmpty(){
                tweetTextView.text = ""
        sut.textViewDidChange(tweetTextView)
        XCTAssertFalse(sut.clearTextButton.isEnabled)

    }
    
    func checkClearButtonWhenTextNotEmpty(){
        tweetTextView.text = "Rania"
        sut.textViewDidChange(tweetTextView)
        XCTAssertTrue(sut.clearTextButton.isEnabled)
    }
    
    func checkCopyButtonWhenTextEmpty(){
        tweetTextView.text = ""
        sut.textViewDidChange(tweetTextView)
        XCTAssertFalse(sut.copyTextButton.isEnabled)
    }
    
    func checkCopyButtonWhenTextNotEmpty(){
        tweetTextView.text = "Rania"
        sut.textViewDidChange(tweetTextView)
        XCTAssertTrue(sut.copyTextButton.isEnabled)
    }

    
    
    
}
