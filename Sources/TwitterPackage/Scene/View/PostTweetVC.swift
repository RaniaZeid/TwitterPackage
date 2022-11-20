//
//  PostTweetVC.swift
//  
//
//  Created by raniazeid on 17/11/2022.
//

import UIKit

public class PostTweetVC: UIViewController {
    
    
    // MARK: - Outlets...
    
    @IBOutlet weak private var tweeterLogoImageView: UIImageView!
    @IBOutlet weak private var characterTypedLabel: UILabel!
    @IBOutlet weak private var chatacterTypedCountLabel: UILabel!
    @IBOutlet weak private var characterRemainingLabel: UILabel!
    @IBOutlet weak private var characterRemainingCountLabel: UILabel!
    @IBOutlet weak private var tweetPostTextView: UITextView!
    @IBOutlet weak private var copyTextButton: UIButton!
    @IBOutlet weak private var clearTextButton: UIButton!
    @IBOutlet weak private var postTweetButton: UIButton!
    @IBOutlet weak private var characterRemainingStack: UIStackView!{
        didSet{
            characterRemainingStack.borderColor = .TwitterColor.babyBlue
        }
    }
    
    @IBOutlet weak private var characterTypedStack: UIStackView!{
        didSet{
            characterTypedStack.borderColor = .TwitterColor.babyBlue        }
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "PostTweetVC", bundle: .module)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: -  Life Cycle....
    public override func viewDidLoad() {
                super.viewDidLoad()
        setupViews()
    }
    
    
    // MARK: - setup Views...
    private func setupViews(){
        tweeterLogoImageView.image = .twitterLogo
        characterTypedLabel.backgroundColor = .TwitterColor.babyBlue
        characterRemainingLabel.backgroundColor = .TwitterColor.babyBlue
        copyTextButton.backgroundColor = .TwitterColor.darkGreen
        clearTextButton.backgroundColor = .red
        tweetPostTextView.borderColor = .TwitterColor.boarderColor
        postTweetButton.backgroundColor = .TwitterColor.mainTweetColor
        self.tweetPostTextView.text = "Start typing! You can enter up to 280 characters"
        self.tweetPostTextView.textColor = .gray
    }
    
    
    public override func viewWillAppear(_ animated: Bool) {
      tweetPostTextView.delegate = self

    }
    // MARK: - copy Tweet Text...
    @IBAction private func copyTweetText(_ sender: Any) {
        
    }
    
    
   // MARK: - clear Tweet Text...
    @IBAction private func clearTweetText(_ sender: Any) {
        self.tweetPostTextView.text = ""
        self.chatacterTypedCountLabel.text = "0"
        self.characterRemainingCountLabel.text = "280"
    }

    
}
extension PostTweetVC : UITextViewDelegate{
    public func textViewDidBeginEditing(_ textView: UITextView) {
        self.tweetPostTextView.text = ""
        self.tweetPostTextView.textColor = .black
    }
    
    public func textViewDidChange(_ textView: UITextView) {
        let count = textView.text.count
        if count >= 280 {
            self.tweetPostTextView.isUserInteractionEnabled = false
        }
        self.chatacterTypedCountLabel.text = "\(count)"
        self.characterRemainingCountLabel.text = String(280 - count)

    }
}
