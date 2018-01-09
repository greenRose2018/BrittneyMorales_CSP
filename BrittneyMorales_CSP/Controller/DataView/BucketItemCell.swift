//
//  BucketItemCell.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 1/5/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell
{

    @IBOutlet weak var bucketItemText: UILabel!
    @IBOutlet weak var bucketItemSymbol: UILabel!
    @IBOutlet weak var bucketItemSignature: UILabel!
    
    var bucketItem : BucketItem!
    {
        didSet
        {
            updateCellView()
        }
    }
    private func randomEmoji() -> String
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0x1F64F
        
        let emojiRange = 79
        
        let ascii = emojiStart + Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji!
    }
    private func randomSymbol() -> String
    {
        let symbolStart = 0x1F680
        let symbolEnd = 0x1F6C5
        
        let symbolRange = 70
        
        let ascii = symbolStart + Int(arc4random_uniform(UInt32(symbolRange)))
        let symbol = UnicodeScalar(ascii)?.description
        return symbol!
    }
    private func updateCellView() -> Void
    {
        if (bucketItem != nil)
        {
            bucketItemSignature.text = bucketItem.itemAuthor
            bucketItemText.text = bucketItem.itemContents
        }
        else
        {
            bucketItemSignature.text = "author goes here"
            bucketItemText.text = "text goes here"
        }
        bucketItemSymbol.text = randomEmoji()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
